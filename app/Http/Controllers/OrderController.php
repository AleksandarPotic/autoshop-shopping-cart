<?php

namespace App\Http\Controllers;

use App\Order;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $orders = Auth::user()->orders;
        $orders->transform(function ($order, $key){
            $order->cart = unserialize($order->cart);
            return $order;
        });
        return view('user.order', ['orders' => $orders]);
    }

    public function changeUser(Request $request)
    {
        $id = $request->id;

        $user = User::where('id',$id)->first();

        $user->name = $request->name;
        $user->mobile = $request->mobile;
        $user->street = $request->street;
        $user->city = $request->city;
        $user->postalCode = $request->postalCode;
        $user->birthday = $request->birthday;

        $user->save();

        return redirect()->back();
    }
}
