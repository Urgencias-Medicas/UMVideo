<?php

namespace App\Http\Controllers;

use App\Session;
use Illuminate\Http\Request;

class SessionController extends Controller
{
    public static function newSession($data)
    {
        return Session::create($data);
    }

    public static function getSession($idClient)
    {
        return Session::select('user_id', 'name')
                        ->leftJoin('users', 'sessions.user_id', '=', 'users.id')
                        ->where('client_id', $idClient)
                        ->orderBy('sessions.id', 'desc')
                        ->first();
    }
}
