myApp.controller('products_page', function ($scope, $apply, $timeout, $sce) {
    $scope.data = {};
    $scope.listProducts = {};
    sv.data.getAllProducts(function (response) {
        alert(1);
        console.log(response);

        $apply(function () {
//            $scope.listProducts = response;
        });
    });
});
$(function () {

});