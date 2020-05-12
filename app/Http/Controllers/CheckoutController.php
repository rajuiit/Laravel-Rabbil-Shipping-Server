<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\DaddressRequest;
use App\Order;
use Cart;
use Auth;
use App\DAddress;
use App\Category;

class CheckoutController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {

        if (Cart::content()->isEmpty()) {
            return redirect('/');
        }
        $id =  Auth::user()->id;

        $ship_address = DAddress::where('user_id', '=', $id)->first();
        // dd($ship_address);
        $data = Cart::content();
        return view('products/checkout', compact('ship_address', 'data'));
    }


    public function placeOrder(DaddressRequest $request)
    {
        $orderId = Order::all('id')->last();


        $Id = $orderId->id + 1;

        $data = $request->all();
        $address = new DAddress;
        // $Address->user_id = Auth::user()->id;

        $address->user_id = Auth::user()->id;
        $address->name = $request->name;
        $address->email = $request->email;
        $address->phone = $request->phone;
        $address->city = $request->city;
        $address->fullAddress = $request->fullAddress;
        $address->order_id = $Id;

        $address->save();


        Order::createOrder();

        Cart::destroy();

        return view('payment/index');
    }
}
