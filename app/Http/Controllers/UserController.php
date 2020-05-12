<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;
use App\Order;
use App\Category;

class UserController extends Controller
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
    

	public function index(){


		if(Auth::user()==true){
			$id = Auth::user()->id;
			$users=User::all()->where('id','=',$id);
			 $orders = Order::latest()->where('user_id','=',$id)->get();
			
		return view('user.profile',compact('users','orders'));		

	}else{
	 return redirect('/');
	}

	}


}
