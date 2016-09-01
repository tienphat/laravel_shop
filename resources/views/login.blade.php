<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>Random Login Form</title>
        <!--Bootstrap CSS-->
        <link href="{{asset('public/css/opensans.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('public/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css" />

        <link rel="stylesheet" href="{{asset('public/backend/css/login.css')}}">

        <script type="text/javascript" src="{{asset('public/js/libs/jquery-2.2.3.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('public/js/libs/bootstrap.js')}}"></script>
        <script src="{{asset('public/backend/js/prefixfree.min.js')}}"></script>
    </head>

    <body>
        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>Login<span>System</span></div>
        </div>
        <br>
        <div class="login">
            <form action="{{url('/admin/login')}}" method="post">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <input type="text" required placeholder="username" name="username"><br>
                <input type="password" required placeholder="password" name="password"><br>
                <input type="submit" value="Login">
                <input type="button" value="Forgot password">
            </form>
        </div>

    </body>
</html>
