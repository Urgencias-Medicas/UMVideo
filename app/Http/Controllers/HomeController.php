<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\QueueController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SessionController;
use App\Helpers\Helper;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        $actionAvailable = '';
        $id_u = auth()->user()->id;
        $name_u = auth()->user()->name;
        $roomName = sha1($id_u . "&%" . str_replace(" ", "&%", $name_u) . "&%" . date("l&%d&%m&%Y"));
        $dataDr = Helper::cryptR(array('idUser' => $id_u, 'nameUser' => $name_u, 'status' => 1), 1);

        $value = '';
        if ($request->input('in')) {

            $person = QueueController::getFirstInQueue();
            if ($person) {

                $data = array(
                    'title' => "¡Un Doctor Está Listo Para Atenderte!",
                    'body' => "Presiona aquí para entrar a la videollamada",
                    'link' => 'https://video.excess.software/' . $roomName
                );

                $tokens = ClientController::getToken($person->idDevice);

                if ($tokens) {

                    foreach ($tokens as $user) {
                        Helper::notify($user->token, $data);
                    }

                    $actionAvailable = 1;
                    QueueController::updateQueue($person->idDevice);
                    UserController::updateUser($id_u, 0);

                    SessionController::newSession(array(
                        'user_id' => $id_u,
                        'client_id' => $person->idDevice
                    ));
                } else {
                    UserController::updateUser($id_u, 1);
                }
            } else {
                UserController::updateUser($id_u, 1);
            }
        } elseif ($request->input('out')) {

            $value = $request->input('out');
            UserController::updateUser($id_u, 0);
        }

        return view('home', ['in' => $request->input('in'), 'out' => $request->input('out'), 'roomName' => $roomName, 'name_u' => $name_u, 'actionAvailable' => $actionAvailable, 'value' => $value, 'dataDr' => $dataDr]);
    }
}
