<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ShiftController;
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
        $id_u = auth()->user()->id;
        $name_u = auth()->user()->name;
        date_default_timezone_set('America/Guatemala');
        $roomName = sha1("&%" . str_replace(" ", "&%", $name_u) . "&%" . date("l&%d&%m&%Y")) . $id_u;
        $dataDr = Helper::cryptR(array('idUser' => $id_u, 'nameUser' => $name_u, 'medNumUser' => auth()->user()->medicalNum, 'status' => 1), 1);

        $value = '';
        if ($request->input('out')) {

            $value = $request->input('out');
            UserController::updateUser($id_u, 0);
            ShiftController::create(['user_id' => $id_u, 'status' => 0]);

        } elseif ($request->input('in')) {
            ShiftController::create(['user_id' => $id_u]);
        }

        return view('home', ['in' => $request->input('in'), 'out' => $request->input('out'), 'roomName' => $roomName, 'name_u' => $name_u, 'value' => $value, 'dataDr' => $dataDr]);
    }
}
