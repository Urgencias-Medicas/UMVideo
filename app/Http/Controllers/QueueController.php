<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Queue;
use App\Helpers\Helper;

class QueueController extends Controller
{
    public static function getFirstInQueue()
    {
        return Queue::where('status', 1)->first();
    }

    public static function getTotalInQueue($userID, $timeInQueue = null)
    {
        if ($timeInQueue)
            return sizeof(Queue::where('status', 1)
                        ->where('created_at', '<', DB::raw('CAST(\'' . $timeInQueue . '\' AS DATETIME)'))
                        ->where('idDevice', '<>', $userID)
                        ->get());
        else
            return sizeof(Queue::where('status', 1)
                        ->where('idDevice', '<>', $userID)
                        ->get());
    }

    public static function clientInQueue($userID)
    {
        return Queue::select('created_at')
                    ->where('status', 1)
                    ->where('idDevice', $userID)
                    ->first();
    }

    public static function updateQueue($idUser, $order = 'asc')
    {
        return Queue::where('idDevice', $idUser)->where('status', 1)->orderBy('id', $order)->limit(1)->update(['status' => 0]);
    }

    public static function insertToQueue($data)
    {
        return Queue::create($data);
    }

    public function removeFromQueue(Request $request)
    {
        $input = Helper::cryptR($request->input('data'), 0);

        if ($input->idUser) {

            $result = QueueController::updateQueue($input->idUser, 'desc');

            if ($result) {

                $content = array(
                    'message' => "Usuario se ha removido de la cola con éxito.",
                    'status' => 1
                );

                $status = 200;
            
            } else {

                $content = array(
                    'message' => "El usuario no existe dentro de la cola.",
                    'status' => 0
                );

                $status = 200;

            }

            $data = array('data' => Helper::cryptR($content, 1));

            return response()->json($data, $status);

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
