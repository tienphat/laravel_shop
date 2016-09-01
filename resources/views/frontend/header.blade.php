<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <base href="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="shortcut icon" type="image/x-icon" href="{{asset('public/shortcut.png')}}" />
        <title>GiantShop - Mua hàng trực tuyến giá rẻ</title>

        <!--Bootstrap CSS-->
        <link href="{{asset('public/css/bootstrap.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('public/css/opensans.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('public/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css" />
        
        <link href="{{asset('public/frontend/css/template.css')}}" rel="stylesheet" type="text/css" />
        
        <!--Jquery-->
        <script type="text/javascript" src="{{asset('public/js/libs/jquery-2.2.3.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('public/js/libs/bootstrap.js')}}"></script>
        <script type="text/javascript" src="{{asset('public/js/libs/angular.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('public/js/libs/paging.js')}}"></script>
    </head>
    
    <body ng-app="myApp">
        <div class="wrapper">
            <!--Header-->
            <div class="header" ng-controller="header">
                <div class="header-top">
                    <div class='container '>
                        <div class="row contact">
                            <div class="col-md-5 col-sm-6 col-xs-6">
                                <div class="row">
                                    Chào mừng bạn đến với <a href="{{ url('/')}}">GiantShop</a><span></span>  |
                                    HOTLINE: <span>(+84)967 085 852</span>
                                </div>
                            </div>
                            <div class="col-md-7 col-sm-6 col-xs-6">
                                @if(Auth::guest())
                                <span class='sign_in'>Đăng nhập</span> | 
                                <a href='{{ url("user/signup")}}' class='sign_up'>Đăng ký</a>
                                @else
                                Xin chào <span class='name'> {{ Auth::user() -> name }} </span> | 
                                <a href='{{ url("user/signout")}}' class='sign_out'>Đăng xuất</a>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="container sign-in-show">
                        <div class="row">
                            <div class="col-md-9">

                            </div>
                            <div class="col-md-3 login-form">
                                <div class="form-group">
                                    <label>Tài khoản</label>
                                    <input type="text" name="username" class="form-control" autocomplete="off" >
                                </div>
                                <div class="password form-group">
                                    <label>Mật khẩu</label>
                                    <input type="password" name="password" class="form-control" autocomplete="off">
                                </div>
                                <div class="sign-in">
                                    <button type="button" name="login" class="btn btn-danger sign-in-button btnLogin"><i class="sign-in-i fa fa-lock"></i>Đăng nhập</button>
                                    <a href="{{ url('user/forgot_password')}}">Quên mật khẩu?</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="header-bottom">
                    <div class="container">
                        <div class="row header-main">
                            <div class="col-md-4 col-sm-5 col-xs-12"><a href="{{ url('/')}}"><img src="{{ asset('public/frontend/img/ic_shop.png')}}" alt="Shop"></a></div>
                            <div class="col-md-5 col-sm-5 col-xs-9">
                                <div class="form-search">
                                    <input type="text" id="search_product" class="search" placeholder="Nhập thông tin tìm kiếm">
                                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-2 col-xs-3">
                                <div class="cart-item">
                                    <a href="{{ url('user/cart')}}"><i class="fa fa-shopping-cart"></i> </a>
                                    <span class="number_cart"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

