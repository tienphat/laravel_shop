@extends('backend.layout.master')

@section('content')
<!-- page content -->
<div class="right_col" role="main" ng-controller="content_users">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Users Manage</h3>
            </div>

            <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="row">

            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <div class="col-sm-2" style="padding: 0px;">
                            <button class="btn btn-danger form-control btnDelete">
                                <i class="fa fa-trash"></i> Delete
                            </button>
                        </div>
                        <div class="col-sm-2 pull-right" style="padding: 0px;">
                            <button class="btn btn-success form-control btnAddNew" data-toggle="modal" data-target="#addNewModal">
                                <i class="fa fa-user-plus"></i> Add User
                            </button>
                        </div>
                        <div class="clearfix"></div>
                        <!-- Modal -->
                        <div class="modal fade" id="addNewModal" tabindex="-1" role="dialog" aria-labelledby="addNewModal" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <form class="form-horizontal form-label-left" id="frmAddUser" validate autocomplete="off" method="post">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel">Add User</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <input type="hidden" name="_token" value="{{ csrf_token()}}">
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Username <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="name" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fullname">Full Name <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fullname" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="fullname" required="required" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="birthdate">Birth Date <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input type="text" class="form-control has-feedback-left" id="birthdate" data-inputmask="'mask': '99/99/9999'" name="birthdate">
                                                            <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                                                            <span id="inputSuccess2Status" class="sr-only">(success)</span>
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="password">Password <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="password" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="password" required="required" type="password">
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Gender <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <h5>
                                                                Male: <input type="radio" class="flat" name="gender" id="genderM" value="1" checked="" required /> 
                                                                Female: <input type="radio" class="flat" name="gender" id="genderF" value="0" />
                                                            </h5>
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input type="email" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12">
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Phone Number <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input type="text" id="number" name="phone_number" required="required" data-validate-minmax="10,100" class="form-control col-md-7 col-xs-12">
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Address<span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input type="text" id="number" name="address" required="required" class="form-control col-md-7 col-xs-12">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-success" ng-click="btnAddNewUser()">Add new</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="x_content">
                        <table id="datatable-buttons" class="table jambo_table table-striped table-bordered table-responsive bulk_action">
                            <thead>
                                <tr>
                                    <th class="text-center ">
                                        <input type="checkbox" id="check-all" class="flat" name="table_records">
                                    </th>
                                    <th class="text-center">STT</th>
                                    <th class="text-center">Fullname</th>
                                    <th class="text-center">Gender</th>
                                    <th class="text-center" >Email</th>
                                    <th class="text-center">Phone number</th>
                                    <th class="text-center">Status</th>
                                    <th class="text-center" >Action</th>

                                </tr>
                            </thead>

                            <tbody>
                                <?php foreach ($list_users as $key => $value): ?>
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox" data-id="<?php echo $value->id; ?>" class="flat checkbox" name="table_records">
                                        </td>
                                        <td class="text-center"><?php echo (int) ($key + 1) ?></td>
                                        <td class="text-center"><a href="javascript:void(0)" ng-click="showInfoUserModal('<?php echo $value->id; ?>')" ><?php echo $value->fullname; ?></a></td>
                                        <td class="text-center"><?php echo $value->gender ? 'Male' : 'Female'; ?></td>
                                        <td class="text-center"><?php echo $value->email; ?></td>
                                        <td class="text-center"><?php echo $value->phone_number; ?></td>
                                        <td class="text-center">
                                            <?php
                                            echo
                                            $value->status ?
                                                    '<button type="button" class="btn btn-round btn-success btn-xs btnChangeStatus' . $value->id . '" onclick="btnChangeStatus(' . $value->id . ')">Active</button>' :
                                                    '<button type="button" class="btn btn-round btn-danger btn-xs btnChangeStatus' . $value->id . '" onclick="btnChangeStatus(' . $value->id . ')">Not Active</button>';
                                            ?>
                                        </td>
                                        <td class="text-center">
                                            <button class="btn btn-danger btn-xs btnDelete"><i class="fa fa-trash"></i> Delete</button>
                                        </td>

                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                        <div class="modal fade" id="userInfoModal" tabindex="-1" role="dialog" aria-labelledby="userInfoModal" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <form class="form-horizontal form-label-left" id="frmUpdateUser" validate autocomplete="off" method="post">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            <h4 class="modal-title" id="myModalLabel">User Info</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <input type="hidden" name="_token" value="{{ csrf_token()}}">
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Username <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="name" class="form-control col-md-7 col-xs-12" ng-model="userInfo.name" value="@{{userInfo.name}}" data-validate-length-range="6" data-validate-words="2" name="name" required="required" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fullname">Full Name <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input id="fullname" class="form-control col-md-7 col-xs-12" ng-model="userInfo.fullname" value="@{{userInfo.fullname}}" data-validate-length-range="6" data-validate-words="2" name="fullname" required="required" type="text">
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="birthdate">Birth Date <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input type="text" class="form-control has-feedback-left" ng-model="userInfo.birth_date" value="@{{userInfo.birth_date}}" id="birthdate" data-inputmask="'mask': '99/99/9999'" name="birthdate">
                                                            <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                                                            <span id="inputSuccess2Status" class="sr-only">(success)</span>
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Gender <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <h5>
                                                                <h5>
                                                                    Male: <input type="radio" class="flat" name="gender" id="genderM" ng-model="userInfo.gender" value="1" checked=""/>
                                                                    Female: <input type="radio" class="flat" name="gender" id="genderF" ng-model="userInfo.gender" value="0"/>
                                                                </h5>
                                                            </h5>
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">Email <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input type="email" id="email" name="email" ng-model="userInfo.email" value="@{{userInfo.email}}" required="required" class="form-control col-md-7 col-xs-12">
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Phone Number <span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input type="text" id="number" name="phone_number" ng-model="userInfo.phone_number" value="@{{userInfo.phone_number}}" required="required" data-validate-minmax="10,100" class="form-control col-md-7 col-xs-12">
                                                        </div>
                                                    </div>
                                                    <div class="item form-group">
                                                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">Address<span class="required">*</span>
                                                        </label>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <input type="text" id="number" name="address" ng-model="userInfo.address" value="@{{userInfo.address}}" required="required" class="form-control col-md-7 col-xs-12">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-success btnUpdateUser" data-id='@{{userInfo.id}}' ng-click="updateUserInfo()">Update</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- /page content -->
@endsection

@section('js')

<!-- Datatables -->
<script src="{{asset('public/libs/datatables.net/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('public/libs/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
<script src="{{asset('public/libs/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
<script src="{{asset('public/libs/datatables.net-buttons-bs/js/buttons.bootstrap.min.js')}}"></script>
<script src="{{asset('public/libs/datatables.net-buttons/js/buttons.flash.min.js')}}"></script>
<script src="{{asset('public/libs/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
<script src="{{asset('public/libs/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
<script src="{{asset('public/libs/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js')}}"></script>
<script src="{{asset('public/libs/datatables.net-keytable/js/dataTables.keyTable.min.js')}}"></script>
<script src="{{asset('public/libs/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('public/libs/datatables.net-responsive-bs/js/responsive.bootstrap.js')}}"></script>
<script src="{{asset('public/libs/datatables.net-scroller/js/datatables.scroller.min.js')}}"></script>
<script src="{{asset('public/libs/jszip/dist/jszip.min.js')}}"></script>
<script src="{{asset('public/libs/pdfmake/build/pdfmake.min.js')}}"></script>
<script src="{{asset('public/libs/pdfmake/build/vfs_fonts.js')}}"></script>
<script src="{{asset('public/libs/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js')}}"></script>
<!-- Custom Theme Scripts -->

<script type="text/javascript" src="{{asset('public/build/js/custom.js')}}"></script>
<script type="text/javascript" src="{{asset('public/backend/js/users.js')}}"></script>
<script type="text/javascript">
    //----------------Datatables-----------
    var $datatable = $('#datatable-buttons');

    $datatable.dataTable({
        'order': [[1, 'asc']],
        'columnDefs': [
            {orderable: true, targets: [0]}
        ]
    });

    $(":input").inputmask();
</script>
@endsection