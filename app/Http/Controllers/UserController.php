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
    public static function smartAPI($idUser, $medicalNum) {
        $data = Helper::cryptR(
            array(
                array(
                    "method" => "602",
                    "IdUser" => $idUser,
                    "MedicalNum" => $medicalNum
                )
            ), 1, 1);

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

            UserController::smartAPI($userID, $person->medicalNum);

            SessionController::newSession(array(
                'user_id' => $person->id,
                'client_id' => $userID
            ));

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
                        'title' => "¡Un Doctor Está Listo Para Atenderte!",
                        'body' => "Presiona aquí para entrar a la videollamada",
                        'link' => 'https://videos.excess.software/' . sha1("&%" . str_replace(" ", "&%", $name_u) . "&%" . date("l&%d&%m&%Y")) . $id_u
                    );

                    $tokens = ClientController::getToken($person->idDevice);

                    if ($tokens) {

                        foreach ($tokens as $user) {
                            Helper::notify($user->token, $data);
                        }

                        QueueController::updateQueue($person->idDevice);
                        UserController::updateUser($id_u, 0);

                        UserController::smartAPI($person->idDevice, $medNum_u);

                        SessionController::newSession(array(
                            'user_id' => $id_u,
                            'client_id' => $person->idDevice
                        ));

                        $stat = 1;
                    } else {
                        UserController::updateUser($id_u, 1);
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
}
