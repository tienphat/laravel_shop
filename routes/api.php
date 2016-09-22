<?php

use Illuminate\Support\Facades\Request;

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

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:api');

Route::get('data/{method}', ['uses' => 'Api\ApiController@index']);
Route::post('data/{method}', ['uses' => 'Api\ApiController@index']);

