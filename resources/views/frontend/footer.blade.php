<footer>
    <div class="footer" ng-controller="footer">
        <div class="footer-top">
            <div class="container sub-container">
                <div class='row'>
                    <div class="col-md-8">
                        <div class="subcribe-get-info">
                            <h2>Send email</h2>
                            <div class="form-subcribe">
                                <input type="email" name="emailSubcribe" class="enter-email" placeholder="Email nhận tin">
                                <button type="submit" name="button" class="gui_email_nhan_tin">Send</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="social-media">
                            <ul>
                                <li><a class="facebook" href="http://facebook.com/quangphat.95"><i class="fa fa-facebook"></i></a></li>
                                <li><a class="twitter" href="https://twitter.com/quangphatc3"><i class="fa fa-twitter"></i></a></li>
                                <li><a class="google-plus" href="http://google.com/+QuangPhátIT"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-lg-3 col-md-3">
                        <div class="footer-mid-menu">
                            <h2>Về chúng tôi</h2>
                            <ul>
                                <li><a href="{{url('/')}}">Trang chủ</a></li>
                                <li><a href="{{url('/gioi-thieu')}}">Giới thiệu</a></li>
                                <li><a href="{{url('/tin-tuc')}}">Tin tức</a></li>
                                <li><a href="{{url('/lien-he')}}">Liên hệ̣</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-3 col-md-3">
                        <div class="footer-mid-menu">
                            <h2>Điều khoản</h2>
                            <ul>
                                <li><a href="{{url('/')}}">Điều khoản sử dụng</a></li>
                                <li><a href="{{url('/')}}">Điều khoản giao dịch</a></li>
                                <li><a href="{{url('/')}}">Dịch vụ tiện ích</a></li>
                                <li><a href="{{url('/')}}">Quyền sở hữu trí tuệ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-3 col-md-3">
                        <div class="footer-mid-menu">
                            <h2>Chính sách</h2>
                            <ul>
                                <li><a href="{{url('/')}}">Chính sách thanh toán</a></li>

                                <li><a href="{{url('/')}}">Chính sách vận chuyển</a></li>

                                <li><a href="{{url('/')}}">Chính sách đổi trả</a></li>

                                <li><a href="{{url('/')}}">Chính sách bảo hành</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-3 col-md-3">
                        <div class="footer-mid-menu contuct">
                            <h2>Liên hệ</h2>
                            <ul>
                                <li>
                                    <i class="fa fa-map-marker"> </i>Addresss: 181 Tôn Đức Thắng, Đống Đa, Hà Nội
                                </li>
                                <li>
                                    <i class="fa fa-envelope"> </i>Email: quangphatc3@gmail.com
                                </li>
                                <li>
                                    <i class="fa fa-phone"> </i>Phone: (+84) 967 085 852
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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

</footer>
</div>


@include('config')

<script>
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


<!--jQuery-->
<script type="text/javascript" src="{{asset('public/frontend/js/frontend.js')}}"></script>
<script type="text/javascript" src="{{asset('public/frontend/js/homepage.js')}}"></script>

<script type="text/javascript" src="{{asset('public/frontend/js/services.js')}}"></script>
<script type="text/javascript" src="{{asset('public/frontend/js/header.js')}}"></script>
<script type="text/javascript" src="{{asset('public/frontend/js/footer.js')}}"></script>


</body>
</html>
