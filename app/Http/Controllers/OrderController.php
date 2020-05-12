<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use App\order_product;
use DB;
use App\Category;
use App\DAddress;
use App\Product;
use PDF;


class OrderController extends Controller
{

    public function index()
    {

        $orders = Order::where('status', '=', 'pending')->orderBy('id', 'desc')->get();

        return view('admin.orders.index', compact('orders'));
    }

    public function orderArchiveDetails()
    {
        $orders = new Order();

        if(request()->has('daterange')){
            $dates = request()->daterange;
            $dates = explode(' - ', $dates);
            $from = date_format(date_create($dates[0]), "Y-m-d");
            $to = date_format(date_create($dates[1]), "Y-m-d");

            $orders = $orders->whereBetween('created_at', [$from, $to]);

        }

        $orders = $orders->latest()->where('status', '=', 'delivered')->get();



        return view('admin.orders.archive', compact('orders'));
    }


    // viewOrderDetails


    public function orderDetails($id)
    {
        $orders = Order::with('user', 'items', 'address', 'orderCols')->find($id);
        foreach ($orders->items as $key => $value) {

            foreach ($orders->orderCols as $index => $product) {
                if ($product['id'] == $value['product_id']) {
                    $orders->items[$key]['title'] = $product['title'];
                    $orders->items[$key]['price'] = $product['price'];
                }
            }
        }
        // dd($orders);
        return view('admin.orders.viewOrderDetails', compact('orders'));
    }



    public function confirm_orders($id)
    {
        // return
        $data = Order::find($id);
        $data->status = 'delivered';

        $data->save();

        return redirect('admin/orders/');
    }
    public function UserOrderDetails($id)
    {
        $orders = Order::with(['user', 'items', 'orderCols'])
            ->where('id', $id)
            ->first();

        foreach ($orders->items as $key => $value) {

            foreach ($orders->orderCols as $index => $product) {
                if ($product['id'] == $value['product_id']) {
                    $orders->items[$key]['title'] = $product['title'];
                    $orders->items[$key]['price'] = $product['price'];
                }
            }
        }
        // dd($orders);
        $d_address = DAddress::where('order_id', '=', $orders->id)->first();
        // dd($d_address);
        return view('user.user_order_details', compact('orders', 'd_address'));
    }



    // get money receipt

    public function make_receipt($id)
    {

        $orders = Order::with(['user', 'items', 'orderCols'])
            ->where('id', $id)
            ->first();

        foreach ($orders->items as $key => $value) {

            foreach ($orders->orderCols as $index => $product) {
                if ($product['id'] == $value['product_id']) {
                    $orders->items[$key]['title'] = $product['title'];
                    $orders->items[$key]['price'] = $product['price'];
                }
            }
        }

        $d_address = DAddress::all()->where('order_id', '=', $orders->id);

        $pdf = PDF::loadView('user.money_receipt', compact('orders', 'd_address'));
        return $pdf->download('invois.pdf');
    }





    public function OrderAddressEdit($id)
    {
        $d_address = DAddress::findOrFail($id);

        return view('user/update_delivery_address', compact('d_address'));
    }

    public function OrderAddressUpdate(Request $Request, $id)
    {
        //return $id;
        $dAddress = DAddress::find($id);
        $data = $Request->except('_token');

        $dAddress->update($data);

        return redirect('/profile');
    }

    public function cancel_order()
    {
        $orders = Order::latest()->where('status', '=', 'canceled')->get();

        return view('admin.orders.cancel', compact('orders'));
    }

    public function make_order_cancel($id)
    {
        $order = Order::find($id);
        $order->status = 'canceled';
        $order->save();

        return back()->with('success', 'Order Canceled');
    }
}
