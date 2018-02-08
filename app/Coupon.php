<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    public static function findByCode($discountCode)
    {
        return self::where('discountCode', $discountCode)->first();
    }
    public function discount($total)
    {
        if ($this->type == 'fixed')
        {
            return $this->value;

        } elseif ($this->type == 'precent_off'){

            return ($this->percent_off / 100) * $total;

        } else{
            return 0;
        }
    }
}
