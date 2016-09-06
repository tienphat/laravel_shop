<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class ApiController extends Controller
{

    public function __construct()
    {
        header('Content-Type: application/json');
    }

    public function index($method)
    {
        return $this->$method();
    }

    public function getAllProducts()
    {
        $result = DB::table('products')->get();

        return $result;
    }

    public function getDetailProduct($id)
    {
        $result = DB::table('products')
                ->where('product_id', '=', $id)
                ->get();
        return $result;
    }

    public function saveProduct(Request $request)
    {
        return 'Lưu thông tin sản phẩm';
    }

    public function updateProduct($id)
    {
        $result = DB::table('products')
                ->where('product_id', '=', $id)
                ->update(['product_name' => 1,
            'product_alias' => 1,
            'product_quantity' => 1,
            'product_images' => 1,
            'product_price' => 1,
            'product_color' => 1,
            'product_size' => 1,
            'product_description' => 1,
            'product_discount' => 1,
            'other_product_details' => 1,
            'status' => 0,
            'trash' => 0,
        ]);

        return $result;
    }

    public function deleteProduct($id)
    {
        return 'Xóa sản phẩm';
    }

}
