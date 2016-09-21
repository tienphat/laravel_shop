<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

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
                ])
                ->where('product_id', '=', $id);

        return $result;
    }

    public function deleteProduct($id)
    {
        return 'Xóa sản phẩm';
    }
     public function addUser(Request $request)
    {
        $validator = $this->addValidation($request);

        if ($validator->passes())
        {
            return[
                'email' => Request::input('email'),
                'password' => Request::input('password'),
                'type' => 1
            ];

            return true;
        }
        else
        {
            $message = 'Add new fail!!';
            return redirect()->back()->withErrors(array('msg' => $message));
        }
    }

    protected function addValidation($request)
    {
        $rules = array(
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed',
        );
        $this->validate($request, $rules);
    }
    

}
