<?php

namespace App\Proceso;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Examen extends Model
{
    use SoftDeletes;

    /** 
      * The attributes that should be mutated to dates. 
      * 
      * @var array 
      */ 
    protected $dates = ['deleted_at'];
}
