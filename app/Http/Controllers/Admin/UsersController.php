<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;

class UsersController extends Controller
{

    public function __construct()
    {
        header('Content-Type: application/json');
    }

    public function index()
    {
        $data['list_users'] = DB::table('users')
                ->join('users_permission', 'users.pid_user', '=', 'users_permission.pid_user')
                ->where('users_permission.permission', '=', 'admin')
                ->get();
        return view('backend.users')->with($data);
    }

    public function profile(Request $request)
    {
        $data[] = [];
        $data['user_id'] = Auth::id();
        $data['userInfo'] = DB::table('users')
                ->join('users_permission', 'users.pid_user', '=', 'users_permission.pid_user')
                ->where('users.id', '=', $data['user_id'])
                ->get()
                ->toArray();
        return view('backend.profile')->with($data);
    }

    public function updateProfile()
    {
        $data[] = [];
        return view('backend.profile')->with($data);
    }

    public function changeStatusUser($id)
    {

        $tmp = DB::table('users')->where('id', $id)->get()->toArray();


        if ($tmp[0]->status)
        {
            $result = DB::table('users')->where('id', $id)->update(['status' => 0]);
            $stt['code'] = 0;
        }
        else
        {
            $result = DB::table('users')->where('id', $id)->update(['status' => 1]);
            $stt['code'] = 1;
        }

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

    public function deleteUsers($id)
    {
        if (is_array($id))
        {
            foreach ($id as $key => $value)
            {
                $result = DB::table('users')->where('id', '=', $value[$key])->delete();
            }
        }
        else
        {
            $result = DB::table('users')->where('id', '=', $id)->delete();
        }

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

}
