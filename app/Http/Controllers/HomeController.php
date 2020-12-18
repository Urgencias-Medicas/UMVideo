<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ShiftController;
use App\Helpers\Helper;
use NotificationChannels\Apn\ApnChannel;
use NotificationChannels\Apn\ApnMessage;
use App\Client;

use Lcobucci\JWT\Signer\Key;
use Lcobucci\JWT\Signer\Ecdsa\Sha256;
use Lcobucci\JWT\Configuration;

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

        //JWT
        $jwt_header = json_encode(['alg' => 'HS256', 'typ' => 'JWT']);

        $jwt_payload = json_encode(['aud' => '00snzhms88', 'iss' => '00snzhms88', 'sub' => 'videos.excess.software', 'room' => $roomName]);

        $base64UrlHeader = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($jwt_header));

        $base64UrlPayload = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($jwt_payload));

        $jwt_signature = hash_hmac('sha256', $base64UrlHeader . "." . $base64UrlPayload, 'wu099lcj7dgpg99', true);

        $base64UrlSignature = str_replace(['+', '/', '='], ['-', '_', ''], base64_encode($jwt_signature));

        $jwt = $base64UrlHeader.".".$base64UrlPayload.".".$base64UrlSignature;

        return view('home', ['in' => $request->input('in'), 'out' => $request->input('out'), 'roomName' => $roomName, 'jwt' => $jwt, 'name_u' => $name_u, 'value' => $value, 'dataDr' => $dataDr]);
    }

    public function send($id){
        $keyfile = storage_path('AuthKey_LM256AQ36M.p8');               // Your p8 Key file
        $keyid = 'LM256AQ36M';                            // Your Key ID
        $teamid = 'HD9RGT8HFZ';                           // Your Team ID (see Developer Portal)
        $bundleid = 'com.micoopeApp';                // Your Bundle ID
        $url = 'https://api.push.apple.com';  // development url, or use http://api.push.apple.com for production environment
        $token = '00c3f398bfad4614755bdeb141c8e4d1f9baf15a24fd7df40901ee559fc901c9';              // Device Token

        $message = '{"aps":{"alert":"Prueba de notificacion 2"}}';

        $key = openssl_pkey_get_private('file://'.$keyfile);

        $header = ['alg'=>'ES256','kid'=>$keyid];
        $claims = ['iss'=>$teamid,'iat'=>time()];

        $header_encoded = $this->base64($header);
        $claims_encoded = $this->base64($claims);

        $signature = '';
        openssl_sign($header_encoded . '.' . $claims_encoded, $signature, $key, 'sha256');
        $jwt = $header_encoded . '.' . $claims_encoded . '.' . base64_encode($signature);

        // only needed for PHP prior to 5.5.24
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

        $result = curl_exec($http2ch);
        if ($result === FALSE) {
        //throw new Exception("Curl failed: ".curl_error($http2ch));
        echo curl_error($http2ch);
        }

        $status = curl_getinfo($http2ch, CURLINFO_HTTP_CODE);
        echo $status;
    }

    function base64($data) {
        return rtrim(strtr(base64_encode(json_encode($data)), '+/', '-_'), '=');
    }

    public function via($notifiable)
    {
        return [ApnChannel::class];
    }

    public function send_notification($notifiable){
        return ApnMessage::create()
            ->body("Test de notificacion desde la web");
    }
}
