<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Http\Controllers\QueueController;
use App\Http\Controllers\SessionController;
use App\Helpers\Helper;

class UserController extends Controller
{
    public function getLink(Request $request)
    {
        $person = User::select('id', 'name')
                    ->where('status', 1)
                    ->first();

        $userID = Helper::cryptR($request->input('data'), 0);
        $timeInQueue = QueueController::clientInQueue($userID);

        if ($person) {

            User::where('id', $person->id)
            ->update(['status' => 0]);

            SessionController::newSession(array(
                'user_id' => $person->id,
                'client_id' => $userID
            ));

            date_default_timezone_set('America/Guatemala');
            $content = array(
                'waitCount' => 0,
                'waitTime' => 0,
                'link' => 'https://video.excess.software/' . sha1($person->id . "&%" . str_replace(" ", "&%", $person->name) . "&%" . date("l&%d&%m&%Y")),
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

        if (isset($idClient->idUser) && isset($idClient->status)) {

            if ($idClient->status) {

                if (!isset($idClient->nameUser)) {

                    $content = array(
                        'message' => "No se recibieron las variables correctas.",
                        'status' => 0
                    );

                    $data = array('data' => Helper::cryptR($content, 1));

                    return response()->json($data, 400);
                }

                $id_u = $idClient->idUser;
                $name_u = $idClient->nameUser;

            } else {

                $userInfo = SessionController::getSession($idClient->idUser);
                $id_u = $userInfo->user_id;
                $name_u = $userInfo->name;

            }

            $result = UserController::updateUser($id_u, 1);

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
                        'link' => 'https://video.excess.software/' . sha1($id_u . "&%" . str_replace(" ", "&%", $name_u) . "&%" . date("l&%d&%m&%Y"))
                    );

                    $tokens = ClientController::getToken($person->idDevice);

                    if ($tokens) {

                        foreach ($tokens as $user) {
                            Helper::notify($user->token, $data);
                        }

                        QueueController::updateQueue($person->idDevice);
                        UserController::updateUser($id_u, 0);

                        SessionController::newSession(array(
                            'user_id' => $id_u,
                            'client_id' => $person->idDevice
                        ));
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

            $data = array('data' => Helper::cryptR($content, 1));

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
