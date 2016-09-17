<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function __construct() {
        
    }
    public function index() {
        $data[] = [];
        $data['user_id'] = Auth::id();
        $data['userInfo'] = DB::table('users')
                ->join('users_permission', 'users.pid_user', '=', 'users_permission.pid_user')
                ->where('users.id', '=', $data['user_id'])
                ->get()
                ->toArray();
        return view('backend.index')->with($data);
    }
    public function show(){
//        return view('backend.index')->with($data);
    }
}
