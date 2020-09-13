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

    public static function notify($token, $data)
    {

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
    }
}
