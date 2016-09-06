myApp.controller('products_page', function ($scope, $apply, $timeout, $sce) {
    $scope.data = {};
    $scope.listProducts = {};
    sv.data.getAllProducts(function (response) {
        console.log(response);

        $apply(function () {
            $scope.listProducts = response;
        });
    });
});
