<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Auth;
use Cart;

class Order extends Model
{
	protected $fillable = ['total'];

	public function orderCols()
	{

		return $this->belongsToMany('App\Product');
	}





	public static function createOrder()
	{

		$user = Auth::user();

		$order = $user->orders()->create(['total' => Cart::subtotal()]);

		foreach (Cart::content() as $cartData) {

			$order->orderCols()->attach($cartData->id, [
				'qty' => $cartData->qty, 'total' => $cartData->qty * $cartData->price
			]);
		}


		Cart::destroy();
	}


	public function user()
	{
		return $this->belongsTo(User::class);
	}

	public function items()
	{
		return $this->hasMany(order_product::class, 'order_id', 'id');
	}

	public function address()
	{
		return $this->hasOne(DAddress::class);
	}
}
