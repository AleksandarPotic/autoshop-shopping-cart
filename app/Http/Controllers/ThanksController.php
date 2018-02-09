<?php

namespace App\Http\Controllers;

use App\Coupon;
use App\Order;
use Illuminate\Support\Facades\Auth;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class ThanksController extends Controller
{
    public function index()
    {
        return view('user.thanks');
    }
    public function saveOrder()
    {
        if (session('coupon')){
            $code = session()->get('coupon')['name'];
            $discountCode = Coupon::where('discountCode', $code)->first();

            $discountCode->delete();
            session()->forget('coupon');
        }

        if (!Auth::guest()){
            $cart = Cart::content();
            $order = new Order();
            $order->cart = serialize($cart);
            $order->user_id = Auth::user()->id;
            $order->transaction = 'Paypal';

            $order->save();
        }

        Cart::instance('default')->destroy();
        return redirect()->route('thanks.index');
    }
}
