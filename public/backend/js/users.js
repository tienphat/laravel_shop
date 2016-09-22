myApp.controller('content_users', function ($scope, $apply, $timeout, $sce) {
    $scope.data = {};
    $scope.listProducts = {};
    $scope.btnAddNewUser;
    sv.data.getAllProducts(function (response) {
        $apply(function () {
//            $scope.listProducts = response;
        });
    });
});
$(document).on("click", ".btnAddNewUser", function () {
    var data = {};
    data = $('#frmAddUser').serialize();
    sv.data.addUser(data, function (response) {
        if (response.stt == "fail") {
            alert('Thao tác thất bại, vui lòng kiểm tra lại!');
        } else {
            alert('Thao tác thành công!');
            $('#addNewModal').modal('hide');
            window.location.reload();
        }
    });
});
function btnChangeStatus(id){
//    var id = $(this).attr('data-id');
    var data = $('input[name="_token"]').val();
    var url = SITE_ROOT + 'admin/changeStatusUser/' + id;

    sv.data.changeStatusUser(url, data, function (response) {
        if (response.status == "success") {
            if (response.code == 1) {
                var html = '';
                html += '<button type="button" class="btn btn-round btn-success btn-xs btnChangeStatus" onclick="btnChangeStatus('+id+')" data-id=' + id + '>Active</button>';
                $('.btnChangeStatus').replaceWith(html);
            } else {
                var html = '';
                html += '<button type="button" class="btn btn-round btn-danger btn-xs btnChangeStatus" onclick="btnChangeStatus('+id+')" data-id=' + id + '>No Active</button>';
                $('.btnChangeStatus').replaceWith(html);
            }
        } else {
            alert('Lỗi không thể thay đổi trạng thái!');
        }
    });

};