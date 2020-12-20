<?php

namespace App\Helpers;

define('METHOD', "aes-128-cbc");
define('KEY', "51C9D6DF37741DF8");
define('KEY_SMART', "2327E7E13A9A254C");
define('IV', "H12H34H90HABHEFH");

class Helper
{
    //1: Encrypt - 0: Decrypt
    public static function cryptR($input, $func, $smart = 0)
    {
        if ($func) {

            $json = json_encode($input);
            $response = openssl_encrypt($json, METHOD, ($smart ? KEY_SMART : KEY), 0, IV);

            return base64_encode($response);
        } else {

            $enc = base64_decode($input);
            $request = openssl_decrypt($enc, METHOD, ($smart ? KEY_SMART : KEY), 0, IV);

            return json_decode($request);
        }
    }

    public static function notify($token, $os, $data)
    {   
        if($os == 'android'){
            # Our new data
            $body = array(
                'to' => $token,
                'data' => $data
            );

            $payload = json_encode($body);

            // Prepare new cURL resource
            $ch = curl_init('https://fcm.googleapis.com/fcm/send');

            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLINFO_HEADER_OUT, true);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);

            // Set HTTP Header for POST request 
            curl_setopt($ch, CURLOPT_HTTPHEADER, array(
                'Authorization: key=AAAA2L9VS20:APA91bH_B4EsSKEhuMJMteawqjRouCP3sfImmAsJ1QhJmYzjkm0H4ebrgtYPMXZlnzGP2HOHOnTZui5ifeo07CCW-PwUUtRfZhGEj-K16Bug8Zzzt953J8RtSlAL_oqJjOaqnnT0rJFi',
                'Content-Type: application/json',
                'Host: fcm.googleapis.com',
                'Content-Length: ' . strlen($payload)
            ));

            // Submit the POST request
            $result = curl_exec($ch);

            /*if ($result === false) {
                throw new Exception(curl_error($ch), curl_errno($ch));
            }*/

            // Close cURL session handle
            curl_close($ch);

            return $result;
        }else if($os == 'ios'){
            $keyfile = storage_path('AuthKey_LM256AQ36M.p8');               // Your p8 Key file
            $keyid = 'LM256AQ36M';                            // Your Key ID
            $teamid = 'HD9RGT8HFZ';                           // Your Team ID (see Developer Portal)
            $bundleid = 'com.micoopeApp';                // Your Bundle ID
            //$url = 'https://api.sandbox.push.apple.com';  // development url, or use http://api.push.apple.com for production environment
            $url = 'https://api.push.apple.com';  // development url, or use http://api.push.apple.com for production environment
            $token = $token;              // Device Token

            $title = $data['title'];
            $body = $data['body'];
            $link = $data['link'];

            $message = '{"aps" : {
                "alert" : {
                    "title" : "'.$title.'",
                    "body" : "'.$body.'"
                },
                "link" : "'.$link.'"
                }
            }';

            $key = openssl_pkey_get_private('file://'.$keyfile);

            $header = ['alg'=>'ES256','kid'=>$keyid];
            $claims = ['iss'=>$teamid,'iat'=>time()];

            $header_encoded = rtrim(strtr(base64_encode(json_encode($header)), '+/', '-_'), '=');
            $claims_encoded = rtrim(strtr(base64_encode(json_encode($claims)), '+/', '-_'), '=');

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
    }

    function base64($data) {
        return rtrim(strtr(base64_encode(json_encode($data)), '+/', '-_'), '=');
    }
}
