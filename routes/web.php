<?php


Route::get('/','LandingPageController@index')->name('home');

Route::get('/shop','ShopController@index')->name('shop.index');
Route::post('/shop','ShopController@price')->name('shop.price');
Route::get('/shop/{product}','ShopController@show')->name('shop.show');

Route::get('/cart','CartController@index')->name('cart.index');
Route::post('/cart','CartController@store')->name('cart.store');
Route::post('/cartDelete','CartController@destroy')->name('cart.destroy');
Route::patch('/cart/{product}','CartController@update')->name('cart.update');
Route::post('/cart/switchSaveForLater/{product}','CartController@switchSaveForLater')->name('cart.switchSaveForLater');

Route::delete('/saveForLater/{product}','SaveForLaterController@destroy')->name('saveForLater.destroy');
Route::post('/saveForLater/switchToCart/{product}','SaveForLaterController@switchToCart')->name('saveForLater.switchToCart');

Route::get('/checkout','CheckoutController@index')->name('checkout.index');
Route::post('/checkout','CheckoutController@store')->name('checkout.store');

Route::post('/coupon','CouponController@store')->name('coupon.store');
Route::delete('/coupon','CouponController@destroy')->name('coupon.destroy');

Route::get('/thanks','ThanksController@index')->name('thanks.index');
Route::get('/saveOrder','ThanksController@saveOrder')->name('thanks.saveOrder');

Route::get('/order','OrderController@index')->name('order.index');
Route::get('/profile','OrderController@profile')->name('order.profile');
Route::get('/points','OrderController@points')->name('order.points');
Route::post('/changeUser','OrderController@changeUser')->name('order.changeUser');

Route::post('/homeDelivery','HomeDeliveryController@saveHomeDelivery')->name('homeDelivery.save');

Route::get('/support', function () {
    return view('user.technical_support');
})->name('support');

Route::get('/services', function () {
    return view('user.services');
})->name('services');

Route::get('/service', function () {
    return view('user.service');
})->name('service');

Route::get('/contact', function () {
    return view('user.contact');
})->name('contact');

Auth::routes();
Route::get('verifyEmailFirst','Auth\RegisterController@verifyEmailFirst')->name('verifyEmailFirst');
Route::get('verify/{email}/{verifyToken}','Auth\RegisterController@sendEmailDone')->name('sendEmailDone');
Route::get('sendCode/{discountCode}','Auth\RegisterController@sendDiscountCode')->name('sendDiscountCode');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
