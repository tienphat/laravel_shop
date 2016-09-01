<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{

    public function login()
    {
        return view('login');
    }

    public function handleLogin(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|exists:users,name,role,admin',
            'password' => 'required'
        ]);

        $username = $req['username'];
        $password = $req['password'];
        if (Auth::attempt(['name' => $username, 'password' => $password]))
        {
            return redirect('/admin');
        }
        else
        {
            // Your logic of invalid credentials.
            echo ('<script>alert("Thông tin đăng nhập không chính xác, vui lòng nhập lại!")</script>');
            return view('login');
        }
//        
//        $username = $req['username'];
//        $password = $req['password'];
//        if (Auth::attempt(['name' => $username, 'password' => $password]))
//        {
//            return view('backend.index');
//        }
//        else
//        {
//            echo ('<script>alert("Thông tin đăng nhập không chính xác, vui lòng nhập lại!")</script>');
//            return view('login');
//        }
    }

}
