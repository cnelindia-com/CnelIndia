<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    protected $fillable = ['title', 'logo', 'photo','link','details'];
    public $timestamps = false;
}
