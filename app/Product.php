<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function category()
    {
        return $this->belongsToMany('App\Category');
    }

    public function presentPrice($value)
    {
        return '$' . number_format($value, 2);
    }

}
