<!--Head-->
@include('frontend.header')

<!--Content-->
<section class="content" ng-cloak ng-controller="content">
    <!--Mainmenu-->
    <div class="mainmenu">
        <div class="container main-menu">
            <div class="row">
                <nav class="navbar navbar-default" role="navigation">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                            <span class="sr-only">Menu</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <?php
                        $html_menu = "<ul class='nav navbar-nav target-active'>";
                        foreach ($mainmenu as $menu) {
                            $html_menu.="<li>";
                            $html_menu.="<a id='" . $menu->link . "' href='" . $menu->link . "' title='" . $menu->title . "'>" . $menu->title . "</a>";
                            $html_menu.="</li>";
                        }
                        $html_menu.="</ul>";

                        echo $html_menu;
                        ?>
                        <ul class="nav navbar-nav navbar-right">

                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>
        </div>
    </div>

    <!--Service-->
    <div class="service ">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-3 col-xs-6 "><i class="fa fa-truck"></i><span>GIAO HÀNG MIỄN PHÍ</span></div>
                <div class="col-md-3 col-sm-3 col-xs-6"><i class="fa fa-comments-o"></i><span>HỖ TRỢ KHÁCH HÀNG 24/7</span></div>
                <div class="col-md-3 col-sm-3 col-xs-6"><i class="fa fa-refresh"></i><span>TRẢ TRONG 30 NGÀY</span></div>
                <div class="col-md-3 col-sm-3 col-xs-6"><i class="fa fa-star"></i><span>GIẢM GIÁ THEO ĐƠN HÀNG</span></div>
            </div>
        </div>
    </div>

    <!--Slideshow-->
    <div class="slideshow hideSlide">
        <div id="carousel-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-generic" data-slide-to="1"></li>
                <li data-target="#carousel-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="{{ asset('public/frontend/img/banner-3.jpg')}}" alt="">
                    <div class="carousel-caption">

                    </div>
                </div>
                <div class="item">
                    <img src="{{ asset('public/frontend/img/banner-2.jpg')}}" alt="Chania">
                </div>

                <div class="item">
                    <img src="{{ asset('public/frontend/img/banner-1.jpg')}}" alt="Flower">
                </div>

            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-generic" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-generic" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
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
</section>

<!--Footer-->
@include('frontend.footer')
