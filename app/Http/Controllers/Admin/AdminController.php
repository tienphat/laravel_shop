<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;

class AdminController extends Controller
{
    
    public function index(){

        return view('backend.index');
        
    }
    
}
