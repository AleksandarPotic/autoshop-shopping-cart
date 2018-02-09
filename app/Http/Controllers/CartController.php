<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Validator;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $percent = 18;
        $subtotal = Cart::subtotal(0,'','');
        $tax = $subtotal * $percent /100;
        $total = number_format($tax + $subtotal,2,'.',',');
        $tax = number_format($tax,2,'.',',');
        $subtotal = number_format($subtotal,2,'.',',');

        return view('user.cart')->with([
            'percent' => $percent,
            'subtotal' => $subtotal,
            'tax' => $tax,
            'total' => $total,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $duplicates = Cart::search(function ($cartItem, $rowId) use ($request) {
            return $cartItem->id === $request->id;
        });

        if ($duplicates->isNotEmpty()){
            return "Greska";
        }
        Cart::add($request->id, $request->name, $request->quantity, $request->price)
            ->associate('App\Product');
        return view('user.layer.header');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(),[
           'quantity' => 'required|numeric|between:1,5'
        ]);

        if ($validator->fails()){
            session()->flash('errors', collect(['Doslo je do greske, proizvodi moraju biti manji od 5']));
            return response()->json(['success' => false],400);
        }

        Cart::update($id, $request->quantity);
        session()->flash('success_message', 'Uspesno ste promenili broj proizvoda');
        return response()->json(['success' => true]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Cart::remove($id);

        return back()->with('success_message', 'Proizvod je uspesno uklonjen iz korpe!');
    }
    /**
     * Switch save for later.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function switchSaveForLater($id)
    {
        $item = Cart::get($id);

        Cart::remove($id);

        $duplicates = Cart::instance('saveForLater')->search(function ($cartItem, $rowId) use ($id) {
            return $rowId === $id;
        });

        if ($duplicates->isNotEmpty()){
            return redirect()->route('cart.index')->with('success_message', 'Proizvod je vec u listu sa sacuvanim proizvodima!');
        }

        Cart::instance('saveForLater')->add($item->id, $item->name, 1, $item->price)
                ->associate('App\Product');

        return redirect()->route('cart.index')->with('success_message', 'Proizvod je sacuvan za kasnije!');
    }
}
