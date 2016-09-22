<?php

namespace App\Http\Controllers\Api;

use Illuminate\Support\Facades\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Validator;
use Hash;
use Carbon;

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

//-------------Product--------------
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

//--------------User----------------
    public function getAllUsers()
    {
        $result = DB::table('users')->get();

        return $result;
    }

    public function getUserInfo($id)
    {
        $result = DB::table('users')->where('id', '=', $id)->get();
        return $result;
    }

    public function updateUserInfo($id)
    {
        $pid_user = 2;
        $param = [
            'name' => Request::input('name') ? Request::input('name') : '',
            'fullname' => Request::input('fullname') ? Request::input('fullname') : '',
            'birth_date' => Request::input('birthdate') ? Request::input('birthdate') : '',
            'address' => Request::input('address') ? Request::input('address') : '',
            'gender' => Request::input('gender') ? Request::input('gender') : '1',
            'phone_number' => Request::input('phone_number') ? Request::input('phone_number') : '',
            'email' => Request::input('email') ? Request::input('email') : '',
            'image' => Request::input('image') ? Request::input('image') : '',
        ];
        $oldInfo = DB::select('select password, created_at from users where id = ?', [$id]);
        $result = DB::table('users')
                ->where('id', $id)
                ->update([
            'pid_user' => $pid_user,
            'name' => $param['name'],
            'fullname' => $param['fullname'],
            'birth_date' => Carbon\Carbon::createFromFormat('d/m/Y', $param['birth_date']),
            'address' => $param['address'],
            'gender' => $param['gender'],
            'phone_number' => $param['phone_number'],
            'email' => $param['email'],
            'address' => $param['address'],
            'password' => $oldInfo[0]->password,
            'image' => $param['image'],
            'remember_token' => 'NO',
            'updated_at' => date('Y-m-d H:i:s'),
            'created_at' => $oldInfo[0]->created_at,
            'status' => 1,
            'trash' => 0,
        ]);
        if ($result)
        {
            $stt['status'] = 'success';
        }
        else
        {
            $stt['status'] = 'fail';
        }
        return json_encode($stt);
    }

    public function addUser()
    {
        $pid_user = 2;
        $param = [
            'name' => Request::input('name') ? Request::input('name') : '',
            'fullname' => Request::input('fullname') ? Request::input('fullname') : '',
            'birth_date' => Request::input('birthdate') ? Request::input('birthdate') : '',
            'address' => Request::input('address') ? Request::input('address') : '',
            'gender' => Request::input('gender') ? Request::input('gender') : '1',
            'phone_number' => Request::input('phone_number') ? Request::input('phone_number') : '',
            'email' => Request::input('email') ? Request::input('email') : '',
            'password' => Request::input('password') ? Request::input('password') : '',
            'image' => Request::input('image') ? Request::input('image') : '',
        ];
//        $validator = Validator::make($param, [
//                    'name' => 'required|max:255',
//                    'fullname' => 'required|max:255',
//                    'birth_date' => 'required|max:255',
//                    'address' => 'required|max:255',
//                    'gender' => 'required|max:255',
//                    'phone_number' => 'required|max:255',
//                    'email' => 'required|email|max:255',
//                    'password' => 'required|confirmed|max:255',
//                    'image' => 'required|max:255',
//        ]);
//        if ($validator->fails())
//        {
//            $stt['err_message'] = $validator->errors();
//        }
//        else
//        {
        $result = DB::table('users')
                ->insert([
            'pid_user' => $pid_user,
            'name' => $param['name'],
            'fullname' => $param['fullname'],
            'birth_date' => Carbon\Carbon::createFromFormat('d/m/Y', $param['birth_date']),
            'address' => $param['address'],
            'gender' => $param['gender'],
            'phone_number' => $param['phone_number'],
            'email' => $param['email'],
            'address' => $param['address'],
            'password' => Hash::make($param['password']),
            'image' => $param['image'],
            'remember_token' => 'NO',
            'updated_at' => date('Y-m-d H:i:s'),
            'created_at' => date('Y-m-d H:i:s'),
            'status' => 1,
            'trash' => 0,
        ]);
        if ($result)
        {
            $stt['status'] = 'success';
        }
        else
        {
            $stt['status'] = 'fail';
        }
//        }

        return json_encode($stt);
    }

}
