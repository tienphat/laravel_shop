myApp.controller('content_users', function ($scope, $apply, $timeout, $sce) {
    $scope.data = {};
    $scope.listProducts = {};
    $scope.btnAddNewUser;
    sv.data.getAllProducts(function (response) {
        alert(1);
        console.log(response);

        $apply(function () {
//            $scope.listProducts = response;
        });
    });
});
$(document).on("click", ".btnAddNewUser", function(){
    var data = {};
    data = $('#frmAddUser').serialize();
    console.log(data);
});