<?php

//---------Backend--------
Route::get('/admin', function(){
    if(Auth::check()){
        return redirect('/dashboard');
    }
    else{
        return redirect('login');
    }
});
Route::get('/dashboard', 'Admin\AdminController@index');
//----------Login--------
Route::get('login', 'Auth\LoginController@getLogin');
Route::post('admin/postLogin', 'Auth\LoginController@postLogin');
Route::get('admin/logout', 'Auth\LoginController@logout');
Route::get('admin/forgotPassword', 'Auth\LoginController@forgotPassword');
//----------Backend continue
Route::get('admin/products', 'Admin\ProductsController@index');
Route::get('admin/products/{id}', 'Admin\ProductsController@detailProduct');
Route::get('admin/users', 'Admin\UsersController@index');
Route::get('admin/customers', 'Admin\CustomersController@index');
Route::get('admin/profile', 'Admin\UsersController@profile');
Route::post('admin/updateProfile', 'Admin\UsersController@updateProfile');
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

Route::get('/dich-vu', 'ServicesController@index');
Route::get('/dich-vu/{num}', 'ServicesController@index');
Route::get('/dich-vu/{any}', 'ServicesController@show');

Route::get('/tin-tuc', 'NewsController@index');
Route::get('/tin-tuc/{num}', 'NewsController@index');
Route::get('/tin-tuc/{any}', 'NewsController@show');

Route::get('/san-pham', 'ProductsController@index');
Route::get('/san-pham/{num}', 'ProductsController@category');
Route::get('/san-pham/{any}', 'ProductsController@category');
Route::get('/san-pham/{any}/{num}', 'ProductsController@category');
//
//Route::get();
