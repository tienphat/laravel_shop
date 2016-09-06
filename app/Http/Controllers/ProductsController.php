<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class ProductsController extends Controller
{
    public function __construct()
    {
        header('Content-Type: application/json');
    }
    public function index(){
        return 'This is ProductsController';
    }
    public function show(){
        return 'This is ProductsController';
    }
}
