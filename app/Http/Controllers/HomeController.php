<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ShiftController;
use App\Helpers\Helper;
use NotificationChannels\Apn\ApnChannel;
use NotificationChannels\Apn\ApnMessage;
use App\Client;
use Hash;
use Auth;

use Lcobucci\JWT\Signer\Key;
use Lcobucci\JWT\Signer\Ecdsa\Sha256;
use Lcobucci\JWT\Configuration;

use Carbon\Carbon;
use App\Appointments;

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
    /*public function index(Request $request)
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

        //JWT
        $jwt_header = json_encode(['alg' => 'HS256', 'typ' => 'JWT']);

        $jwt_payload = json_encode(['aud' => '00snzhms88', 'iss' => '00snzhms88', 'sub' => 'videos.excess.software', 'room' => $roomName]);

        $base64UrlHeader = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($jwt_header));

        $base64UrlPayload = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($jwt_payload));

        $jwt_signature = hash_hmac('sha256', $base64UrlHeader . "." . $base64UrlPayload, 'wu099lcj7dgpg99', true);

        $base64UrlSignature = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($jwt_signature));

        $jwt = $base64UrlHeader.".".$base64UrlPayload.".".$base64UrlSignature;

        return view('home', ['in' => $request->input('in'), 'out' => $request->input('out'), 'roomName' => $roomName, 'jwt' => $jwt, 'name_u' => $name_u, 'value' => $value, 'dataDr' => $dataDr]);
    }*/

    public function index(){
        $user = auth()->user();

        if($user->hasRole('reporteria')){
            return redirect('/appointments');
        }

        $userAppointments = Appointments::where('doctor', $user->id)->where('status', 'active')->select('time as title', 'date as date', 'time as time', 'id', 'roomName')->get();

        foreach($userAppointments as $appointment){
            $appointment->title = Carbon::parse($appointment->title)->format('H:i').' - '.Carbon::parse($appointment->time)->addMinutes(30)->format('H:i');
            $appointment->duration = 30;
            $appointment->url = '/appointments/'.$appointment->id;
            //$appointment->url = 'https://smartla.daily.co/'.$appointment->roomName;
        }

        //return $userAppointments;
        return view('home', ['userAppointments' => $userAppointments]);
    }

    public function send($id, $title, $body, $link){
        //$user = Client::find($id);
        $token = ClientController::getToken($id);

        $data = array(
            'title' => $title, 
            'body' => $body,
            'link' => $link
        );

        //return $message;

        //return $user;
        //return $user->os;
        //return $data;

        foreach($token as $user){
            Helper::notify($user->token, $user->os, $data);
        }

        return 'hecho';
    }

    public function changePassword(){
        return view('auth.passwords.change');
    }

    public function changePasswordPost(Request $request) {
        if (!(Hash::check($request->get('current-password'), Auth::user()->password))) {
            // The passwords matches
            return redirect()->back()->with("error","Las contraseñas no coinciden.");
        }

        if(strcmp($request->get('current-password'), $request->get('new-password')) == 0){
            // Current password and new password same
            return redirect()->back()->with("error","Tu nueva contraseña no puede ser la misma que la anterior.");
        }

        $validatedData = $request->validate([
            'current-password' => 'required',
            'new-password' => 'required|string|min:8|confirmed',
        ]);

        //Change Password
        $user = Auth::user();
        $user->password = bcrypt($request->get('new-password'));
        $user->save();

        return redirect()->back()->with("success","Contraseña cambiada correctamente");
    }
}
