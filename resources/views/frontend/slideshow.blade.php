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