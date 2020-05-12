<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class order_product extends Model
{
	protected $table = 'order_product';
	
    public function orders(){

    	return $this->hasMany('App\Order');

    }
}
