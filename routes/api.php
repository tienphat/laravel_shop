<?php

use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\DB;

/*
  |--------------------------------------------------------------------------
  | API Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register API routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | is assigned the "api" middleware group. Enjoy building your API!
  |
 */

Route::get('/user', function (Request $request)
{
    return $request->user();
})->middleware('auth:api');

//Route::get('data/{method}', ['uses' => 'Api\ApiController@index']);
//Route::get('data/{method}/{param}', ['uses' => 'Api\ApiController@index']);
Route::post('data/{method}', ['uses' => 'Api\ApiController@index']);

Route::group(array('prefix'=>'data/'), function(){
//    User
    Route::get('getAllUsers', 'Api\ApiController@getAllUsers');
    Route::post('getUserInfo/{id}', 'Api\ApiController@getUserInfo');
    Route::post('updateUserInfo/{id}', 'Api\ApiController@updateUserInfo');
//    Product
    Route::get('getAllProducts/{id}', 'Api\ApiController@getAllProducts');
    Route::get('getDetailProduct/{id}', 'Api\ApiController@getDetailProduct');
});