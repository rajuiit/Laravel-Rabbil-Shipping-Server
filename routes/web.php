<?php

use App\User;
use App\Type;
use App\Product;
use App\Category;

Route::get('/', function () {

    $product = Product::all();
    $type = Type::all();

    $tob_products = Product::where('product_quality', '=', 'hot deals')->paginate(4);

    $categorys = Category::all();

    return view('welcome', compact('product', 'categorys', 'tob_products'));
});

//testing purpose
Route::get('/addtocart/', function () {

    return view('products/add_to_cart');
});

Route::get('/cart_product/', function () {

    return view('products/cart');
});
//testing purpose end
//Company Profile page
Route::get('/company', function () {
    return view('company.profile');
})->name('company');
//Contact page
Route::get('/contact/', function () {
    return view('company.contact');
})->name('contact');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('/product', 'UserProductController');
Route::get('search', 'UserProductController@search');

Route::get('/product/title/{title}', 'UserProductController@getProductByTitle');
Route::get('/product/category/{id}', 'UserProductController@getProductByCategory');
Route::get('/product/discount/product', 'UserProductController@getDiscountProduct');

// cart product cart product cart product
Route::get('cart/', 'cartController@index');

Route::get('cart/add/{id}', 'cartController@addItem');

Route::get('cart/remove/{id}', 'cartController@removeItem');

Route::get('cart/update/', 'cartController@updateCart');
// cart product end here

// checkout
Route::get('checkout/', 'CheckoutController@index');
Route::post('confirm/', 'CheckoutController@placeOrder');

//checkout end

//user Controller

Route::get('profile', 'UserController@index')->name('user.profile');
// orders Controller

Route::get('orders/details/{id}', 'OrderController@UserOrderDetails');
Route::get('orders/pdf/{id}', 'OrderController@make_receipt');

Route::get('order/address/edit/{id}', 'OrderController@OrderAddressEdit');

Route::post('order/address/update/{id}', 'OrderController@OrderAddressUpdate');

// orders controller end

Route::group(['middleware' => ['admin']], function () {

    Route::get('admin/', function () {
        return view('admin.index');
    })->name('admin.index');

    Route::resource('admin/users', 'AdminUsersController');

    Route::get('admin/order/users/{id}', 'AdminUsersController@show_order_user');

    Route::resource('admin/categories', 'AdminCategoriesController');


    Route::post('admin/products/type', 'AdminProductController@type_view');

    //Route::resource('admin/products','AdminProductController');
    Route::resource('admin/products', 'AdminProductController');


    Route::resource('admin/types', 'AdminTypesController');

    Route::get('admin/orders/', 'OrderController@index');

    Route::get('admin/cancel-orders', 'OrderController@cancel_order')
        ->name('order.cancel');

    Route::put('admin/orders-make-cancel/{id}', 'OrderController@make_order_cancel')
        ->name('make_order.cancel');

    Route::get('admin/archive/', 'OrderController@orderArchiveDetails');

    Route::get('admin/archive/search', 'OrderController@orderArchiveDetails')->name('archive.search');

    Route::get('admin/orders/{id}', 'OrderController@orderDetails');

    Route::get('admin/orders/confirm/{id}', 'OrderController@confirm_orders');
});

//payment method

Route::get('/nexus', 'paymentController@nexusPay');
