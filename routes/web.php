<?php

/*
  |--------------------------------------------------------------------------
  | Application Routes
  |--------------------------------------------------------------------------
 */

Route::get('/', 'HomeController@index');
Route::get('/admin', 'Admin\AdminController@index');
//---------Login-----------//
Route::get('/admin/login', 'Auth\LoginController@login');
Route::post('/admin/login', 'Auth\LoginController@login');

Route:controller([
   'auth' => 'Auth\AuthController',
    'auth' => 'Auth\AuthController' 
]);

Route::get('/san-pham', 'ProductsController@index');
Route::get('/lien-he', 'ContactController@index');
Route::get('/gioi-thieu', 'IntroductionController@index');

Route::group(array('prefix' => 'dich-vu'), function()
{
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

Route::get('/api_data/{method}', 'DataController@');

Route::get('{any}', 'ProductsController@show');
