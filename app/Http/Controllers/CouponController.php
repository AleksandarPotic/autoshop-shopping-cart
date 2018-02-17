<?php

namespace App\Http\Controllers;

use App\Coupon;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CouponController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $coupon = Coupon::where('discountCode', $request->discountCode)->first();

        if (!$coupon){
            return redirect()->route('checkout.index')->withErrors('Ovaj kod ne postoji! Pokusajte ponovo.');
        }

        $total = Cart::total(0,'','');
        $subtotal = Cart::subtotal(0,'','');

        if ($coupon->type == 'percent') {
            session()->put('coupon', [
                'name' => $coupon->discountCode,
                'value' => $coupon->value,
                'type' => $coupon->type,
                'discount' => $coupon->discount($subtotal),
            ]);
            return redirect()->route('checkout.index')->with('success_message', 'Iskoristili ste kod za popust.');
        }else if ($coupon->type == 'fixed') {
            if ($total >= 2000)
            {
                session()->put('coupon', [
                    'name' => $coupon->discountCode,
                    'type' => $coupon->type,
                    'discount' => $coupon->discount(Cart::subtotal()),
                ]);
                return redirect()->route('checkout.index')->with('success_message', 'Iskoristili ste kod za popust.');
            }else{
                return redirect()->route('checkout.index')->withErrors('Kod mozete iskoristiti na racun veci od $2000.');
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy()
    {
        session()->forget('coupon');

        return redirect()->route('checkout.index')->with('success_message', 'Kod za popust je uklonjen.');
    }
}
