<?php

//---------Backend--------
Route::get('/admin', function() {
    if (Auth::check()) {
        return redirect('/dashboard');
    } else {
        return redirect('login');
    }
});
Route::get('/dashboard', 'Admin\AdminController@index');
//----------Login--------
Route::get('login', 'Auth\LoginController@getLogin');
Route::group(array('prefix' => 'admin/'), function() {
    Route::post('postLogin', 'Auth\LoginController@postLogin');
    Route::get('logout', 'Auth\LoginController@logout');
    Route::get('forgotPassword', 'Auth\LoginController@forgotPassword');
});
//----------Backend continue
Route::group(array('prefix' => 'admin/'), function() {
    Route::get('products', 'Admin\ProductsController@index');
    Route::get('products/{id}', 'Admin\ProductsController@detailProduct');
    Route::get('customers', 'Admin\CustomersController@index');
    Route::get('orders', 'Admin\UsersController@orders');
    
    //Users
    Route::get('users', 'Admin\UsersController@index');
    Route::get('profile', 'Admin\UsersController@profile');
    Route::post('updateProfile', 'Admin\UsersController@updateProfile');
    Route::post('addUser', 'Admin\UsersController@addUser');
    Route::post('changeStatusUser/{id}', 'Admin\UsersController@changeStatusUser');
    Route::post('deleteUsers/{id}', 'Admin\UsersController@deleteUsers');
});
//---------Frontend--------
Route::get('/', 'HomeController@index');

Route::get('/san-pham', 'ProductsController@index');
Route::get('/lien-he', 'ContactController@index');
Route::get('/gioi-thieu', 'IntroductionController@index');

Route::group(array('prefix' => 'dich-vu'), function() {
    Route::get('/', 'ServicesController@index');
    Route::get('/{num}', 'ServicesController@index');
    Route::get('/{any}', 'ServicesController@show');
});

Route::group(array('prefix' => 'tin-tuc'), function() {
    Route::get('/', 'NewsController@index');
    Route::get('/{num}', 'NewsController@index');
    Route::get('/{any}', 'NewsController@show');
});
Route::group(array('prefix' => 'san-pham'), function() {
    Route::get('/', 'ProductsController@index');
    Route::get('/{num}', 'ProductsController@category');
    Route::get('/any}', 'ProductsController@category');
    Route::get('/{any}/{num}', 'ProductsController@category');
});