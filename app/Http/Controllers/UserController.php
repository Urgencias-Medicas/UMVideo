<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Http\Controllers\QueueController;
use App\Http\Controllers\SessionController;
use App\Http\Controllers\ShiftController;
use App\Helpers\Helper;

class UserController extends Controller
{
    public static function smartAPI($idUser, $medicalNum, $session_id = 0, $afiliadoID = 0) {
        if($session_id != 0){
            if($afiliadoID != 0){
                $data = Helper::cryptR(
                    array(
                        array(
                            "method" => "602",
                            "IdUser" => $idUser,
                            "IdAfiliado" => $afiliadoID,
                            "MedicalNum" => $medicalNum,
                            "Codigo" => $session_id
                        )
                    ), 1, 1);
            }else{
                $data = Helper::cryptR(
                    array(
                        array(
                            "method" => "602",
                            "IdUser" => $idUser,
                            "MedicalNum" => $medicalNum,
                            "Codigo" => $session_id
                        )
                    ), 1, 1);
            }

            $curl = curl_init();
            curl_setopt_array($curl, array(
                CURLOPT_URL => "http://umwsdl.smartla.net/wsdl_um.php",
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => "POST",
                CURLOPT_POSTFIELDS => array('data' => $data),
            ));

            curl_exec($curl);
        }
    }

    public function getLink(Request $request)
    {
        $person = User::select('id', 'name', 'medicalNum')
                    ->where('status', 1)
                    ->first();

        $userID = Helper::cryptR($request->input('data'), 0);
        $timeInQueue = QueueController::clientInQueue($userID);

        if ($person) {

            User::where('id', $person->id)
            ->update(['status' => 0]);

            $session_id = SessionController::newSession(array(
                'user_id' => $person->id,
                'client_id' => $userID
            ));

            UserController::smartAPI($userID, $person->medicalNum, $session_id);

            date_default_timezone_set('America/Guatemala');
            $content = array(
                'waitCount' => 0,
                'waitTime' => 0,
                'link' => 'https://videos.excess.software/' . sha1("&%" . str_replace(" ", "&%", $person->name) . "&%" . date("l&%d&%m&%Y")) . $person->id,
                'status' => 1
            );

            $data = array('data' => Helper::cryptR($content, 1));

            return response()->json($data, 200);

        } elseif ($timeInQueue) {

            $totalQueue = QueueController::getTotalInQueue($userID, $timeInQueue->created_at);

            $content = array(
                'waitCount' => $totalQueue,
                'waitTime' => ($totalQueue * 10) + 3,
                'title' => 'Actualmente usted ya se encuentra en la lista de espera.',
                'description' => 'En unos momentos un doctor se comunicará con usted.',
                'status' => 0
            );

            $data = array('data' => Helper::cryptR($content, 1));

            return response()->json($data, 200);

        } else {

            $totalQueue = QueueController::getTotalInQueue($userID);

            QueueController::insertToQueue(['idDevice' => $userID, 'status' => 1]);

            $content = array(
                'waitCount' => $totalQueue,
                'waitTime' => ($totalQueue * 10) + 3,
                'title' => 'Todos nuestros doctores se encuentran ocupados.',
                'description' => '¿Desea esperar? De lo contrario nosotros le regresaremos la llamada.',
                'status' => 0
            );

            $data = array('data' => Helper::cryptR($content, 1));

            return response()->json($data, 200);

        }
    }

    public function getLinkAfiliado(Request $request)
    {
        $person = User::select('id', 'name', 'medicalNum')
                    ->where('status', 1)
                    ->first();

        $input = Helper::cryptR($request->input('data'), 0);
        $userID = $input->userID;
        $afiliadoID = $input->afiliadoID;
        $timeInQueue = QueueController::clientInQueue($userID);

        if ($person) {

            User::where('id', $person->id)
            ->update(['status' => 0]);

            $session_id = SessionController::newSession(array(
                'user_id' => $person->id,
                'client_id' => $userID,
                'afiliado_id' => $afiliadoID,
            ));

            UserController::smartAPI($userID, $person->medicalNum, $session_id, $afiliadoID);

            date_default_timezone_set('America/Guatemala');
            $content = array(
                'waitCount' => 0,
                'waitTime' => 0,
                'link' => 'https://videos.excess.software/' . sha1("&%" . str_replace(" ", "&%", $person->name) . "&%" . date("l&%d&%m&%Y")) . $person->id,
                'status' => 1
            );

            $data = array('data' => Helper::cryptR($content, 1));

            return response()->json($data, 200);

        } elseif ($timeInQueue) {

            $totalQueue = QueueController::getTotalInQueue($userID, $timeInQueue->created_at);

            $content = array(
                'waitCount' => $totalQueue,
                'waitTime' => ($totalQueue * 10) + 3,
                'title' => 'Actualmente usted ya se encuentra en la lista de espera.',
                'description' => 'En unos momentos un doctor se comunicará con usted.',
                'status' => 0
            );

            $data = array('data' => Helper::cryptR($content, 1));

            return response()->json($data, 200);

        } else {

            $totalQueue = QueueController::getTotalInQueue($userID);

            QueueController::insertToQueue(['idDevice' => $userID, 'afiliado_id' => $afiliadoID, 'status' => 1]);

            $content = array(
                'waitCount' => $totalQueue,
                'waitTime' => ($totalQueue * 10) + 3,
                'title' => 'Todos nuestros doctores se encuentran ocupados.',
                'description' => '¿Desea esperar? De lo contrario nosotros le regresaremos la llamada.',
                'status' => 0
            );

            $data = array('data' => Helper::cryptR($content, 1));

            return response()->json($data, 200);

        }
    }
  
    public static function updateUser($idUser, $status)
    {
        return User::where('id', $idUser)->update(['status' => $status]);
    }

    public static function releaseUser(Request $request)
    {
        $idClient = Helper::cryptR($request->input('data'), 0);

        if ($request->input('pause')) {

            $result = UserController::updateUser($idClient->idUser, 2);
            ShiftController::create(['user_id' => $idClient->idUser, 'status' => 2]);

            return response()->json($result, 200);
        }

        if ($request->input('end')){

            $result = UserController::updateUser($idClient->idUser, 0);

            return response()->json($result, 200);

        }

        if ($request->input('start'))
            ShiftController::create(['user_id' => $idClient->idUser, 'status' => 3]);

        if (isset($idClient->idUser) && isset($idClient->status)) {

            if ($idClient->status) {

                if (!isset($idClient->nameUser) || !isset($idClient->medNumUser)) {

                    $content = array(
                        'message' => "No se recibieron las variables correctas.",
                        'status' => 0
                    );

                    $data = array('data' => Helper::cryptR($content, 1));

                    return response()->json($data, 400);
                }

                $id_u = $idClient->idUser;
                $name_u = $idClient->nameUser;
                $medNum_u = $idClient->medNumUser;

            } else {

                $userInfo = SessionController::getSession($idClient->idUser);
                $id_u = $userInfo->user_id;
                $name_u = $userInfo->name;
                $medNum_u = $userInfo->medicalNum;

            }

            $result = UserController::updateUser($id_u, 1);

            $stat = 0;

            if ($result) {

                $content = array(
                    'message' => "Usuario se habilitó con éxito.",
                    'status' => 1
                );

                $person = QueueController::getFirstInQueue();
                if ($person) {

                    date_default_timezone_set('America/Guatemala');
                    $data = array(
                        'title' => "Presiona aquí para entrar a la videollamada",
                        'body' => "¡Un Doctor Está Listo Para Atenderte!",
                        'link' => 'https://videos.excess.software/' . sha1("&%" . str_replace(" ", "&%", $name_u) . "&%" . date("l&%d&%m&%Y")) . $id_u
                    );

                    $tokens = ClientController::getToken($person->idDevice);

                    $status_user = User::where('id', $id_u)->value('status');

                    if($status_user != 2){
                        if ($tokens) {

                            foreach ($tokens as $user) {
                                Helper::notify($user->token, $user->os, $data);
                            }
    
                            QueueController::updateQueue($person->idDevice);
                            UserController::updateUser($id_u, 0);
                            
                            if(isset($person->afiliado_id)){
                                $session_id = SessionController::newSession(array(
                                    'user_id' => $id_u,
                                    'client_id' => $person->idDevice,
                                    'afiliado_id' => $person->afiliado_id,
                                ));
                    
                                UserController::smartAPI($person->idDevice, $medNum_u, $session_id, $person->afiliado_id);
                            }else{
                                $session_id = SessionController::newSession(array(
                                    'user_id' => $id_u,
                                    'client_id' => $person->idDevice
                                ));
    
                                UserController::smartAPI($person->idDevice, $medNum_u, $session_id);
                            }
    
                            $stat = 1;
                        } else {
                            UserController::updateUser($id_u, 1);
                        }
                    }

                    
                }

            } else {

                $content = array(
                    'message' => "El usuario no existe.",
                    'status' => 0
                );
            }

            $data = array('data' => Helper::cryptR($content, 1), 'status' => $stat);

            return response()->json($data, 200);

        } else {

            $content = array(
                'message' => "No se recibieron las variables correctas.",
                'status' => 0
            );

            $data = array('data' => Helper::cryptR($content, 1));

            return response()->json($data, 400);
        }
    }

    public function testNotifications(){
        $keyfile = storage_path('AuthKey_LM256AQ36M.p8');               // Your p8 Key file
            $keyid = 'LM256AQ36M';                            // Your Key ID
            $teamid = 'HD9RGT8HFZ';                           // Your Team ID (see Developer Portal)
            $bundleid = 'com.micoopeApp';                // Your Bundle ID
            //$url = 'https://api.sandbox.push.apple.com';  
            $url = 'https://api.push.apple.com';  
            $token = '01b7a14522e7558439629bd1382f83fbabb3499c35da251db109fd9e836a791a';              // Device Token

            $title = 'test notificación';
            $body = 'Esto es una prueba';
            $link = isset($data['link']) ? $data['link'] : '';

            $message = '{"aps" : {
                "alert" : {
                    "title" : "'.$title.'",
                    "body" : "'.$body.'"
                },
                "link" : "'.$link.'"
                }
            }';

            $key = openssl_pkey_get_private('file://'.$keyfile);

            $header = ['alg'=>'ES256','kid'=>$keyid];
            $claims = ['iss'=>$teamid,'iat'=>time()];

            $header_encoded = rtrim(strtr(base64_encode(json_encode($header)), '+/', '-_'), '=');
            $claims_encoded = rtrim(strtr(base64_encode(json_encode($claims)), '+/', '-_'), '=');

            $signature = '';
            openssl_sign($header_encoded . '.' . $claims_encoded, $signature, $key, 'sha256');
            $jwt = $header_encoded . '.' . $claims_encoded . '.' . base64_encode($signature);

            if (!defined('CURL_HTTP_VERSION_2_0')) {
                define('CURL_HTTP_VERSION_2_0', 3);
            }

            $http2ch = curl_init();
            curl_setopt_array($http2ch, array(
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_2_0,
            CURLOPT_URL => "$url/3/device/$token",
            CURLOPT_PORT => 443,
            CURLOPT_HTTPHEADER => array(
                "apns-topic: {$bundleid}",
                "authorization: bearer $jwt"
            ),
            CURLOPT_POST => TRUE,
            CURLOPT_POSTFIELDS => $message,
            CURLOPT_RETURNTRANSFER => TRUE,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HEADER => 1
            ));
            curl_setopt($http2ch, CURLOPT_SSL_VERIFYPEER, false);
            //curl_setopt($http2ch, CURLOPT_CAINFO, "/var/www/html/cacert.pem"); // <------ 
            //curl_setopt($http2ch, CURLOPT_CAPATH, "/var/www/html/cacert.pem");

            $result = curl_exec($http2ch);
            if ($result === FALSE) {
            //throw new Exception("Curl failed: ".curl_error($http2ch));
            echo curl_error($http2ch);
            }

            $status = curl_getinfo($http2ch, CURLINFO_HTTP_CODE);
            echo $status;
    }
}
