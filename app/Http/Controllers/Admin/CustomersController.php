<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class CustomersController extends Controller
{

    public function __construct()
    {
        header('Content-Type: application/json');
    }
    public function index() {
        $data[] = [];
        $data['arrCustomers'] = DB::table('customer')
                ->join('users','customer.user_id','=','users.id')
                ->join('users_permission','users_permission.pid_user','=','users.pid_user')
                ->where('users_permission.permission','=','customer')
                ->get();
        return view('backend.customers')->with($data);
    }
    public function show(){
        
    }
    public function detailCustomer($id){
        $data['arrCustomers'] = DB::table('customer')
                ->join('users','customer.user_id','=','users.id')
                ->join('users_permission','users_permission.pid_user','=','users.id')
                ->where('users_permission.permission','=','customer')
                ->where('customer.id','=',$id)
                ->get();
        return view('backend.product_detail')->with($data);
    }

}
