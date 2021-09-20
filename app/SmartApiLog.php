<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SmartApiLog extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $table = 'smart_api_log';

    protected $fillable = [
        'method', 'idUser', 'idAfiliado', 'medicalNum', 'codigo', 'crypt'
    ];
}
