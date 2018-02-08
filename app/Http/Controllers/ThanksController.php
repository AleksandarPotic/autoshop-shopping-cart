<?php

namespace App\Http\Controllers;

use App\Coupon;
use App\Order;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class ThanksController extends Controller
{
    public function index(Request $request)
    {
        if (session('coupon')){
            $code = session()->get('coupon')['name'];
            $discountCode = Coupon::where('discountCode', $code)->first();

            $discountCode->delete();
            session()->forget('coupon');
        }
        $cart = Cart::content();
        $order = new Order();
        $order->cart = serialize($cart);
        $order->name = 'Aleksanadr';
        $order->city = 'Aleksanadr';
        $order->address = 'Aleksanadr';
        $order->country = 'Aleksanadr';
        $order->transaction_id = 'Aleksanadr';

        $order->save();

        Cart::instance('default')->destroy();
        return view('user.thanks');
    }
}
