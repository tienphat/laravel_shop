<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>Login System</title>
        <!--Bootstrap CSS-->
        <link href="{{asset('public/css/opensans.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('public/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css" />

        <link rel="stylesheet" href="{{asset('public/css/login/login.css')}}">
        <link rel="stylesheet" href="{{asset('public/css/bootstrap.css')}}">
        <link rel="stylesheet" href="{{asset('public/css/login/components.min.css')}}">

        <script type="text/javascript" src="{{asset('public/js/libs/jquery-2.2.3.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('public/js/libs/bootstrap.js')}}"></script>
    </head>

    <body>
        <div class="login">
            <!-- BEGIN LOGO -->
            <div class="logo">
                <a href="index.html">
                    <img src="/img/logo-big.png" alt="" /> </a>
            </div>
            <!-- END LOGO -->
            <!-- BEGIN LOGIN -->
            <div class="content">
                <!-- BEGIN LOGIN FORM -->
                <form class="login-form" action="{{url('admin/postLogin')}}" method="post">
                    {{ csrf_field() }}
                    <h3 class="form-title font-green">Sign In</h3>
                    <div class="alert alert-danger display-hide">
                        <button class="close" data-close="alert"></button>
                        <span> Enter any username and password. </span>
                    </div>
                    <div class="form-group">
                        <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                        <label class="control-label visible-ie8 visible-ie9">Username</label>
                        <input class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="name" /> </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Password</label>
                        <input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password" /> </div>
                    @if (session('status'))
                    <div id="formMessage" class="alert alert-danger">
                        {{ session('status') }}
                    </div>
                    @endif
                    <div class="form-actions">
                        <button type="submit" class="btn green uppercase">Login</button>
                        <label class="rememberme check mt-checkbox mt-checkbox-outline">
                            <input type="checkbox" name="remember" value="1" />Remember
                            <span></span>
                        </label>
                        <a href="javascript:;" id="forget-password" class="forget-password">Forgot Password?</a>
                    </div>
                    <div class="create-account">
                        <p>
                            <a  href="{{url('admin/forgotPassword')}}" id="register-btn" class="uppercase">Create an account</a>
                        </p>
                    </div>
                </form>
                <!-- END LOGIN FORM -->
                <!-- BEGIN FORGOT PASSWORD FORM -->
                <form class="forget-form" action="index.html" method="post">
                    <h3 class="font-green">Forget Password ?</h3>
                    <p> Enter your e-mail address below to reset your password. </p>
                    <div class="form-group">
                        <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email" /> </div>
                    <div class="form-actions">
                        <button type="button" id="back-btn" class="btn green btn-outline">Back</button>
                        <button type="submit" class="btn btn-success uppercase pull-right">Submit</button>
                    </div>
                </form>
                <!-- END FORGOT PASSWORD FORM -->
                <!-- BEGIN REGISTRATION FORM -->
                <form class="register-form" action="index.html" method="post">
                    <h3 class="font-green">Sign Up</h3>
                    <p class="hint"> Enter your personal details below: </p>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Full Name</label>
                        <input class="form-control placeholder-no-fix" type="text" placeholder="Full Name" name="fullname" /> </div>
                    <div class="form-group">
                        <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                        <label class="control-label visible-ie8 visible-ie9">Email</label>
                        <input class="form-control placeholder-no-fix" type="text" placeholder="Email" name="email" /> </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Address</label>
                        <input class="form-control placeholder-no-fix" type="text" placeholder="Address" name="address" /> </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">City/Town</label>
                        <input class="form-control placeholder-no-fix" type="text" placeholder="City/Town" name="city" /> </div>

                    <p class="hint"> Enter your account details below: </p>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Username</label>
                        <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="username" /> </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Password</label>
                        <input class="form-control placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="Password" name="password" /> </div>
                    <div class="form-group">
                        <label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>
                        <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Re-type Your Password" name="rpassword" /> </div>
                    <div class="form-group margin-top-20 margin-bottom-20">
                        <label class="mt-checkbox mt-checkbox-outline">
                            <input type="checkbox" name="tnc" /> I agree to the
                            <a href="javascript:;">Terms of Service </a> &
                            <a href="javascript:;">Privacy Policy </a>
                            <span></span>
                        </label>
                        <div id="register_tnc_error"> </div>
                    </div>
                    <div class="form-actions">
                        <button type="button" id="register-back-btn" class="btn green btn-outline">Back</button>
                        <button type="submit" id="register-submit-btn" class="btn btn-success uppercase pull-right">Submit</button>
                    </div>
                </form>
                <!-- END REGISTRATION FORM -->
            </div>
            <div class="copyright"> 2016 © TienPhat. Admin Dashboard. </div>
        </div>


    </body>
</html>
