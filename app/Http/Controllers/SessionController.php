<?php

namespace App\Http\Controllers;

use App\Session;
use Illuminate\Http\Request;
use App\Helpers\Helper;

class SessionController extends Controller
{
    public function index()
    {
        $sessions = Session::select('sessions.id as id', 'users.name as doctor','client_id as paciente', 'sessions.status as status', 'sessions.created_at as start_time', 'sessions.updated_at as end_time', 'rec_name as recording')
                            ->leftJoin('users', 'sessions.user_id', '=', 'users.id')
                            ->orderBy('sessions.id', 'desc')
                            ->get();

        return view('session', ['sessions' => $sessions]);
    }

    public static function newSession($data)
    {
        return Session::create($data);
    }

    public static function getSession($idClient)
    {
        return Session::select('user_id', 'name', 'medicalNum')
                        ->leftJoin('users', 'sessions.user_id', '=', 'users.id')
                        ->where('client_id', $idClient)
                        ->orderBy('sessions.id', 'desc')
                        ->first();
    }

    public function setRecording(Request $request)
    {
        if ($request->input('data')) {

            $input = Helper::cryptR($request->input('data'), 0);

            if (isset($input->idUser) && isset($input->recFile)) {

                $result = Session::where('user_id', $input->idUser)
                                    ->where('status', 1)
                                    ->orderBy('id', 'desc')
                                    ->where('rec_name', '')
                                    ->limit(1)
                                    ->update(['status' => 2, 'rec_name' => $input->recFile]);

                $content = array(
                    'status' => $result
                );

                $data = array('data' => Helper::cryptR($content, 1));
                return response()->json($data, 200);

            } elseif (isset($input->idUser)) {

                $result = Session::where('user_id', $input->idUser)
                                    ->where('status', 0)
                                    ->orderBy('id', 'desc')
                                    ->limit(1)
                                    ->update(['status' => 1]);

                $content = array(
                    'status' => $result
                );

                $data = array('data' => Helper::cryptR($content, 1));
                return response()->json($data, 200);

            } else {

                $content = array(
                    'status' => 0
                );

                $data = array('data' => Helper::cryptR($content, 1));
                return response()->json($data, 400);

            }

        } else {

            $content = array(
                'status' => 0
            );

            $data = array('data' => Helper::cryptR($content, 1));
            return response()->json($data, 400);
        }
    }
}
