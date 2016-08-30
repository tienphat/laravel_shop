<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <base href="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('public/shortcut.png')}}" />
    <title>GiantShop - Mua hàng trực tuyến giá rẻ</title>

    <!--Bootstrap CSS-->
    <link href="{{asset('public/frontend/css/bootstrap.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('public/frontend/css/opensans.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('public/frontend/css/template.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('public/frontend/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css" />
    <!--jQuery-->
    <script type="text/javascript" src="{{asset('public/frontend/js/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/frontend/js/jquery2.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/frontend/js/jq.js')}}"></script>
    <script type="text/javascript" src="{{asset('public/frontend/js/js_frontend.js')}}"></script>
    <!--Bootstrap JavaScript-->
    <script type="text/javascript" src="{{asset('public/frontend/js/bootstrap.js')}}"></script>

</head>

<body>

    <!--Header-->
    <div class="header">
        @include('frontend.header')
    </div>

    <!--Mainmenu-->
    <div class="mainmenu">
        @include('frontend.mainmenu')
    </div>

    <!--Service-->
    <div class="service ">
        @include('frontend.service')
    </div>

    <!--Slideshow-->
    <div class="slideshow hideSlide">
        @include('frontend.slideshow')
    </div>

    <!--Main-->
    <div class="main">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-4 col-xs-12 main_left">
                    <div class="ml-box-left">
                        @include('frontend.main_left')
                    </div>
                </div>
                <div class="col-md-9 col-sm-8 col-xs-12 main_right">
                    <div class="ml-box-right">
                        @yield('main_right')
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Footer-->
    <div class="footer">
        @include('frontend.footer')
    </div>

    <!--Copyright-->
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h4>&copy; Bản quyền thuộc về TienPhat</h4>
                </div>
            </div>
        </div>
    </div>

</body>

</html>