<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pokemon extends Model
{
    protected $fillable = ['name', 'types'];

    // Esto hace que 'types' siempre sea un array cuando lo recuperamos
    protected $casts = [
        'types' => 'array',
    ];
}
