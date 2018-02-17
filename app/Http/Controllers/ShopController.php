<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use function foo\func;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->category){
            $products = Product::with('category')->whereHas('category', function ($query){
                $query->where('slug', request()->category);
            })->paginate(12);
            $categories = Category::all();
            $categoryName = $categories->where('slug',request()->category)->first()->name;
        }else{
            //Test cache
            //$start = microtime(true);
            $products = Cache::remember('products', 10, function (){
                return Product::inRandomOrder()->paginate(12);
            });

            //Test cache
            //$duration = (microtime(true) - $start) * 1000;

            $categories = Category::all();
            $categoryName = 'Proizvodi';

            //Test cache
            //return $duration;
        }

        return view('user.shop',compact('products','categories','categoryName'));
    }
    public function price(Request $request)
    {
        $price = $request->price;
        if (isset($price)){
            $products = Product::where('price', '<=', $price)->orderByRaw('price DESC')->paginate(12);
            response()->json($products);
            return view('user.layer.range',compact('products'));
        }
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  string  $slug
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $product = Product::where('slug',$slug)->firstOrFail();
        $alsoProducts = Product::where('slug', '!=' ,$slug)->inRandomOrder()->take(4)->get();

        return view('user.product',compact('product','alsoProducts'));
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
