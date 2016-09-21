<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Collection;

class ProductsController extends Controller
{

    public function __construct()
    {
        header('Content-Type: application/json');
    }
    public function index() {
        $data[] = [];
        $data['list_products'] = DB::table('products')->get();
        return view('backend.products')->with($data);
    }
    public function show(){
//        $data['list_products'] = DB::table('products')->get();
//        return view('backend.products')->with($data);
    }
    public function detailProduct($id){
        $data['productInfo'] = DB::table('products')
                ->where('products.product_id','=', $id )
                ->get()->toArray();
        return view('backend.product_detail')->with($data);
    }

}
