<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <base href="{{url('/')}}" />

        <title>Admin Page Giant Shop!</title>

        <!-- Bootstrap -->
        <link href="{{asset('public/libs/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="{{asset('public/libs/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
        <!-- NProgress -->
        <link href="{{asset('public/libs/nprogress/nprogress.css')}}" rel="stylesheet">
        <!-- iCheck -->
        <link href="{{asset('public/libs/iCheck/skins/flat/green.css')}}" rel="stylesheet">
        <!-- bootstrap-progressbar -->
        <link href="{{asset('public/libs/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css')}}" rel="stylesheet">
        <!-- JQVMap -->
        <link href="{{asset('public/libs/jqvmap/dist/jqvmap.min.css')}}" rel="stylesheet"/>

        <!-- Custom Theme Style -->
        <link href="{{asset('public/build/css/custom.min.css')}}" rel="stylesheet">
        

        <!--Jquery-->
        <script type="text/javascript" src="{{asset('public/js/libs/jquery-2.2.3.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('public/js/libs/bootstrap.js')}}"></script>
        <!--AngularJS-->
        <script type="text/javascript" src="{{asset('public/js/libs/angular.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('public/js/libs/paging.js')}}"></script>
        
        @yield('css')
    </head>

    <body class="nav-md" ng-cloak ng-app='myApp'>
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <div class="navbar nav_title" style="border: 0;">
                            <a href="{{url('/admin')}}" class="site_title"><i class="fa fa-paw"></i> <span>Giant Shop!</span></a>
                        </div>

                        <div class="clearfix"></div>

                        <!-- menu profile quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src="{{asset('public/images/admin.jpg')}}" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Xin chào,</span>
                                <h2>Tiến Phát</h2>
                            </div>
                        </div>
                        <!-- /menu profile quick info -->

                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                            <div class="menu_section">
                                <h3>General</h3>
                                <ul class="nav side-menu">
                                    <li><a href="{{url('/admin')}}"><i class="fa fa-home"></i> Trang chủ</a>
                                        <!--                                        <ul class="nav child_menu">
                                                                                    <li><a href="{{url('/admin')}}">Dashboard</a></li>
                                                                                    <li><a href="">Dashboard2</a></li>
                                                                                    <li><a href="">Dashboard3</a></li>
                                                                                </ul>-->
                                    </li>
                                    <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="form.html">General Form</a></li>
                                            <li><a href="form_advanced.html">Advanced Components</a></li>
                                            <li><a href="form_validation.html">Form Validation</a></li>
                                            <li><a href="form_wizards.html">Form Wizard</a></li>
                                            <li><a href="form_upload.html">Form Upload</a></li>
                                            <li><a href="form_buttons.html">Form Buttons</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-desktop"></i> UI Elements <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="general_elements.html">General Elements</a></li>
                                            <li><a href="media_gallery.html">Media Gallery</a></li>
                                            <li><a href="typography.html">Typography</a></li>
                                            <li><a href="icons.html">Icons</a></li>
                                            <li><a href="glyphicons.html">Glyphicons</a></li>
                                            <li><a href="widgets.html">Widgets</a></li>
                                            <li><a href="invoice.html">Invoice</a></li>
                                            <li><a href="inbox.html">Inbox</a></li>
                                            <li><a href="calendar.html">Calendar</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="{{url('admin/products')}}">Products</a></li>
                                            <li><a href="tables_dynamic.html">Table Dynamic</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="chartjs.html">Chart JS</a></li>
                                            <li><a href="chartjs2.html">Chart JS2</a></li>
                                            <li><a href="morisjs.html">Moris JS</a></li>
                                            <li><a href="echarts.html">ECharts</a></li>
                                            <li><a href="other_charts.html">Other Charts</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-clone"></i>Layouts <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
                                            <li><a href="fixed_footer.html">Fixed Footer</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="menu_section">
                                <h3>Live On</h3>
                                <ul class="nav side-menu">
                                    <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="e_commerce.html">E-commerce</a></li>
                                            <li><a href="projects.html">Projects</a></li>
                                            <li><a href="project_detail.html">Project Detail</a></li>
                                            <li><a href="contacts.html">Contacts</a></li>
                                            <li><a href="profile.html">Profile</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="page_403.html">403 Error</a></li>
                                            <li><a href="page_404.html">404 Error</a></li>
                                            <li><a href="page_500.html">500 Error</a></li>
                                            <li><a href="plain_page.html">Plain Page</a></li>
                                            <li><a href="login.html">Login Page</a></li>
                                            <li><a href="pricing_tables.html">Pricing Tables</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="#level1_1">Level One</a>
                                            <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                                                <ul class="nav child_menu">
                                                    <li class="sub_menu"><a href="level2.html">Level Two</a>
                                                    </li>
                                                    <li><a href="#level2_1">Level Two</a>
                                                    </li>
                                                    <li><a href="#level2_2">Level Two</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a href="#level1_2">Level One</a>
                                            </li>
                                        </ul>
                                    </li>                  
                                    <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>
                                </ul>
                            </div>

                        </div>
                        <!-- /sidebar menu -->

                        <!-- /menu footer buttons -->
                        <div class="sidebar-footer hidden-small">
                            <a data-toggle="tooltip" data-placement="top" title="Settings">
                                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="Lock">
                                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="Logout">
                                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                            </a>
                        </div>
                        <!-- /menu footer buttons -->
                    </div>
                </div>

                <!-- top navigation -->
                <div class="top_nav">
                    <div class="nav_menu">
                        <nav>
                            <div class="nav toggle">
                                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                            </div>

                            <ul class="nav navbar-nav navbar-right">
                                <li class="">
                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src="{{asset('public/images/admin.jpg')}}" alt="">Tiến Phát
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                                        <li><a href="javascript:;"> Thông tin tài khoản</a></li>
                                        <li>
                                            <a href="javascript:;">
                                                <span class="badge bg-red pull-right">50%</span>
                                                <span>Cài đặt</span>
                                            </a>
                                        </li>
                                        <li><a href="javascript:;">Trợ giúp</a></li>
                                        <li><a href="{{url('admin/login')}}"><i class="fa fa-sign-out pull-right"></i> Đăng xuất</a></li>
                                    </ul>
                                </li>

                                <li role="presentation" class="dropdown">
                                    <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                        <i class="fa fa-envelope-o"></i>
                                        <span class="badge bg-green">6</span>
                                    </a>
                                    <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                        <li>
                                            <a>
                                                <span class="image"><img src="{{asset('public/images/img.jpg')}}" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image"><img src="{{asset('public/images/img.jpg')}}" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image"><img src="{{asset('public/images/img.jpg')}}" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image"><img src="{{asset('public/images/img.jpg')}}" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="text-center">
                                                <a>
                                                    <strong>See All Alerts</strong>
                                                    <i class="fa fa-angle-right"></i>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>

                <!-- page content -->
                @yield('page_content')

                <!-- footer content -->
                <footer>
                    <div class="pull-right">
                        Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
                    </div>
                    <div class="clearfix"></div>
                </footer>
            </div>
        </div>

        <script type="text/javascript">

var SITE_ROOT = '<?php echo url('/'); ?>/';
var myApp = angular.module('myApp', ['bw.paging']);
myApp.factory('$apply', function ($rootScope) {
    return function (fn) {
        setTimeout(function () {
            $rootScope.$apply(fn);
        });
    };
});

myApp.directive('ngDom', function ($apply) {
    return {
        scope: {'ngDom': '='},
        link: function (scope, elem) {
            scope.ngDom = elem[0];
            $apply(function () {
                scope.ngDom = elem[0];
            });
        }
    };
});
//-------- ng-enter ---------//
myApp.directive('ngEnter', function () {
    return function (scope, element, attrs) {
        element.bind("keydown keypress", function (event) {
            if (event.which === 13) {
                scope.$apply(function () {
                    scope.$eval(attrs.ngEnter);
                });

                event.preventDefault();
            }
        });
    };
});
        </script>

        <!-- Service -->
        <script src="{{asset('public/js/services.js')}}"></script>
        <!-- FastClick -->
        <script src="{{asset('public/libs/fastclick/lib/fastclick.js')}}"></script>
        <!-- NProgress -->
        <script src="{{asset('public/libs/nprogress/nprogress.js')}}"></script>
        <!-- Chart.js -->
        <script src="{{asset('public/libs/Chart.js/dist/Chart.min.js')}}"></script>
        <!-- gauge.js -->
        <script src="{{asset('public/libs/gauge.js/dist/gauge.min.js')}}"></script>
        <!-- bootstrap-progressbar -->
        <script src="{{asset('public/libs/bootstrap-progressbar/bootstrap-progressbar.min.js')}}"></script>
        <!-- iCheck -->
        <script src="{{asset('public/libs/iCheck/icheck.min.js')}}"></script>
        <!-- Skycons -->
        <script src="{{asset('public/libs/skycons/skycons.js')}}"></script>
        <!-- Flot -->
        <script src="{{asset('public/libs/Flot/jquery.flot.js')}}"></script>
        <script src="{{asset('public/libs/Flot/jquery.flot.pie.js')}}"></script>
        <script src="{{asset('public/libs/Flot/jquery.flot.time.js')}}"></script>
        <script src="{{asset('public/libs/Flot/jquery.flot.stack.js')}}"></script>
        <script src="{{asset('public/libs/Flot/jquery.flot.resize.js')}}"></script>
        <!-- Flot plugins -->
        <script src="{{asset('public/libs/flot.orderbars/js/jquery.flot.orderBars.js')}}"></script>
        <script src="{{asset('public/libs/flot-spline/js/jquery.flot.spline.min.js')}}"></script>
        <script src="{{asset('public/libs/flot.curvedlines/curvedLines.js')}}"></script>
        <!-- DateJS -->
        <script src="{{asset('public/libs/Datebuild/date.js')}}"></script>
        <!-- JQVMap -->
        <script src="{{asset('public/libs/jqvmap/dist/jquery.vmap.js')}}"></script>
        <script src="{{asset('public/libs/jqvmap/dist/maps/jquery.vmap.world.js')}}"></script>
        <script src="{{asset('public/libs/jqvmap/examples/js/jquery.vmap.sampledata.js')}}"></script>
        <!-- bootstrap-daterangepicker -->
        <script src="{{asset('public/libs/moment/moment.min.js')}}"></script>
        <script src="{{asset('public/libs/datepicker/daterangepicker.js')}}"></script>

        <!-- Custom Theme Scripts -->
        <script src="{{asset('public/build/js/custom.min.js')}}"></script>

        <script src="{{asset('public/js/excLibsJs.js')}}"></script>
        
        @include('config')

        @yield('js')
    </body>
</html>
