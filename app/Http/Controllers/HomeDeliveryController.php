<?php

namespace App\Http\Controllers;

use App\HomeDelivery;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Order;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Coupon;

class HomeDeliveryController extends Controller
{
    public function saveHomeDelivery(Request $request)
    {

        $cart = Cart::content();

        $homeDelivery = new HomeDelivery();
        $homeDelivery->user_id = Auth::user()->id;
        $homeDelivery->name = $request->name;
        $homeDelivery->email = $request->email;
        $homeDelivery->mobile = $request->mobile;
        $homeDelivery->city = $request->city;
        $homeDelivery->street = $request->street;
        $homeDelivery->postalCode = $request->postalCode;
        $homeDelivery->cart = serialize($cart);
        $homeDelivery->totalPrice = $request->totalPrice;

        $homeDelivery->save();

        if (!Auth::guest()){
            $order = new Order();
            $order->cart = serialize($cart);
            $order->user_id = Auth::user()->id;
            $order->transaction = 'Kucna dostava';

            $order->save();
        }


        if (session('coupon')){
            $code = session()->get('coupon')['name'];
            $discountCode = Coupon::where('discountCode', $code)->first();

            $discountCode->delete();
            session()->forget('coupon');
        }

        Cart::instance('default')->destroy();
        return redirect()->route('thanks.index');
    }
}
