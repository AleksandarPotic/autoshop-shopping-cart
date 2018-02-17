<?php

namespace App\Http\Controllers;

use App\HomeDelivery;
use App\Point;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Order;
use Gloudemans\Shoppingcart\Facades\Cart;
use App\Coupon;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
use App\Mail\discountCode;

class HomeDeliveryController extends Controller
{
    public function saveHomeDelivery(Request $request)
    {
        $cart = Cart::content();

        $homeDelivery = new HomeDelivery();
        if (!Auth::guest()){
            $homeDelivery->user_id = Auth::user()->id;

            $points = Point::where('user_id', Auth::user()->id)->first();

            if (!$points){
                $points = new Point();
                $points->user_id = Auth::user()->id;
                $points->points = 0;
                $points->save();
            }

            $points->points = $points->points + 25;

            if ($points->points == 100){
                $coupon = new Coupon;
                $coupon->discountCode = strtoupper(Str::random(8));
                $coupon->type = 'percent';
                $coupon->value = 100;
                $coupon->email = Auth::user()->email;
                $coupon->save();

                $coupon = Coupon::where('email',Auth::user()->email)->first();
                Mail::to(Auth::user()->email)->send(new discountCode($coupon));

                $points->points = 0;
                $points->save();
            } else {
                $points->save();
            }
        }
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
            $order->totalPrice = $request->totalPrice;

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
