<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class UsersController extends Controller
{

    public function __construct()
    {
        header('Content-Type: application/json');
    }

    public function index()
    {
        $data['list_users'] = DB::table('users')->join('users_detail', 'users.id', '=', 'users_detail.users_id')->get();
        return view('backend.users')->with($data);
    }

    public function show()
    {
        return 'This is ProductsController';
    }

}

