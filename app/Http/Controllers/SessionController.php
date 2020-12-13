<?php

namespace App\Http\Controllers;

use App\Session;
use Illuminate\Http\Request;
use App\Helpers\Helper;
use Storage;

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

            $json = array(
                "idUser" => "31",
                "recFile" => "8886166a8c4cecf5d6160bf767bf25b8f4a139ef23_2020-11-24-22-49-31.mp4",
            );

            //return var_dump($input);

            $json_crypt = Helper::cryptR($json, 1);

            Storage::put($input->idUser.'-test.txt', json_encode($input));

            //return $json_crypt;

            //return var_dump(Helper::cryptR('ckJkaWpqVjNBWWJNRTI0UjNOYlNiUT09', 0));

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

                return response()->json($content, 200);

            } elseif (isset($input->idUser)) {

                $result = 0;
                if ($request->input('status')) {

                    $result = Session::where('user_id', $input->idUser)
                                        ->where('status', 0)
                                        ->orderBy('id', 'desc')
                                        ->limit(1)
                                        ->update(['status' => 3]);

                } else {

                    $result = Session::where('user_id', $input->idUser)
                                        ->where('status', 0)
                                        ->orderBy('id', 'desc')
                                        ->limit(1)
                                        ->update(['status' => 1]);

                }

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

    public function testApi($test){

        Storage::put('test.txt', $test);

        return 'test done';
    }
}
