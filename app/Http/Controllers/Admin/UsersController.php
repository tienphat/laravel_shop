<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;

class UsersController extends Controller {

    public function __construct() {
        header('Content-Type: application/json');
    }

    public function index() {
        $data['list_users'] = DB::table('users')
                ->join('users_permission', 'users.pid_user', '=', 'users_permission.pid_user')
                ->where('users_permission.permission', '=', 'admin')
                ->get();
        return view('backend.users')->with($data);
    }

    public function profile(Request $request) {
        $data[] = [];
        $data['user_id'] = Auth::id();
        $data['userInfo'] = DB::table('users')
                ->join('users_permission', 'users.pid_user', '=', 'users_permission.pid_user')
                ->where('users.id', '=', $data['user_id'])
                ->get()
                ->toArray();
        return view('backend.profile')->with($data);
    }

    public function updateProfile() {
        $data[] = [];
        return view('backend.profile')->with($data);
    }

   

}
