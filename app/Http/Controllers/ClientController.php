<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Client;
use App\Helpers\Helper;

class ClientController extends Controller
{
    public static function getToken($idUser)
    {
        return Client::select('token')
                    ->where('idUser', $idUser)
                    ->groupBy('token')
                    ->get();
    }
  
    public function insertClient(Request $request)
    {
        $input = Helper::cryptR($request->input('data'), 0);

        if ($input->idUser && $input->token && $input->os) {
            Client::create((array)$input);

            $content = array(
                'status' => 1
            );

            $data = Helper::cryptR($content, 1);

            return response()->json($data, 201);

        } else {

            $content = array(
                'status' => 0
            );

            $data = Helper::cryptR($content, 1);

            return response()->json($data, 400);

        }
    }

    public function notifyUser(Request $request)
    {
        $input = Helper::cryptR($request->input('data'), 0);

        if ($input->idUser && $input->title && $input->body) {

            $tokens = Client::select('token')
                            ->where('idUser', $input->idUser)
                            ->groupBy('token')
                            ->get();

            if ($tokens) {

                $data = array(
                    'body' => $input->body,
                    'title' => $input->title,
                );

                foreach ($tokens as $user) {
                    Helper::notify($user->token, $data);
                }

                $content = array(
                    'message' => "Usuarios notificados con éxito.",
                    'status' => 1
                );

                $data = Helper::cryptR($content, 1);

                return response()->json($data, 200);
            
            } else {

                $content = array(
                    'message' => "El usuario no tiene un token asignado.",
                    'status' => 0
                );

                $data = Helper::cryptR($content, 1);

                return response()->json($data, 400);
            }

        } else {

            $content = array(
                'message' => "No se recibió las variables correctas.",
                'status' => 0
            );

            $data = Helper::cryptR($content, 1);

            return response()->json($data, 400);
        }
    }
}
