<?php

namespace App\Http\Controllers\Api;

use Illuminate\Support\Facades\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Hash;
use Carbon;

class ApiController extends Controller {

    public function __construct() {
        header('Content-Type: application/json');
    }

    public function index($method) {
        return $this->$method();
    }

    public function getAllProducts() {
        $result = DB::table('products')->get();

        return $result;
    }

    public function getAllUsers() {
        $result = DB::table('users')->get();

        return $result;
    }

    public function getDetailProduct($id) {
        $result = DB::table('products')
                ->where('product_id', '=', $id)
                ->get();
        return $result;
    }

    public function saveProduct(Illuminate\Http\Request $request) {
        return 'Lưu thông tin sản phẩm';
    }

    public function updateProduct($id) {
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

    public function deleteProduct($id) {
        return 'Xóa sản phẩm';
    }

    public function addUser() {
        $name = Request::input('name') ? Request::input('name') : '';
        $fullname = Request::input('fullname') ? Request::input('fullname') : '';
        $birth_date = Request::input('birthdate') ? Request::input('birthdate') : '';
        $address = Request::input('address') ? Request::input('address') : '';
        $gender = Request::input('gender') ? Request::input('gender') : '';
        $phone_number = Request::input('phone_number') ? Request::input('phone_number') : '';
        $email = Request::input('email') ? Request::input('email') : '';
        $address = Request::input('address') ? Request::input('address') : '';
        $password = Request::input('password') ? Request::input('password') : '';
        $image = Request::input('image') ? Request::input('image') : '';

        $result = DB::table('users')
                ->insert([
            'pid_user' => '2',
            'name' => $name,
            'fullname' => $fullname,
            'birth_date' => Carbon\Carbon::createFromFormat('d/m/Y', $birth_date),
            'address' => $address,
            'gender' => $gender,
            'phone_number' => $phone_number,
            'email' => $email,
            'address' => $address,
            'password' => Hash::make($password),
            'image' => $image,
            'remember_token' => 'NO',
            'updated_at' => date('Y-m-d H:i:s'),
            'created_at' => date('Y-m-d H:i:s'),
            'status' => 1,
            'trash' => 0,
        ]);

        if ($result) {
            $stt['status'] = 'success';
        } else {
            $stt['status'] = 'fail';
        }
        return json_encode($stt);
    }

    

}
