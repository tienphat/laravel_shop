<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class ProductsController extends Controller
{

    public function __construct()
    {
        header('Content-Type: application/json');
    }

    public function index()
    {
        $data['list_products'] = DB::table('products')->get();
        return view('backend.products')->with($data);
    }

    public function show()
    {
        return 'This is ProductsController';
    }

}
