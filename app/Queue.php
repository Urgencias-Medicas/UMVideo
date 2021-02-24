<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Queue extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'idDevice', 'afiliado_id', 'status',
    ];
}
