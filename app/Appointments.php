<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Appointments extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'doctor', 'user', 'date', 'time', 'status', 'videourl', 'roomName', 'record', 'apellidos', 'nombres', 'telefono', 'tipo', 'idInterno', 'producto'
    ];
}
