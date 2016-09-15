@extends('backend.layout.master')

@section('css')
<link rel="stylesheet" href="{{asset('public/backend/css/products.css')}}" />
@endsection

@section('content')
<!-- page content -->
<div class="right_col" role="main" ng-controller="products_page">
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
                        <h2>Users</h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <table id="datatable-buttons" class="table table-striped table-bordered table-responsive bulk_action">
                            <thead>
                                <tr>
                                    <th class="text-center " style="width:5%" >
                                        <input type="checkbox" id="check-all" class="flat" name="table_records">
                                    </th>
                                    <th class="text-center" style="width:5%">STT</th>
                                    <th class="text-center" style="width:25%">Fullname</th>
                                    <th class="text-center" style="width:10%">Gender</th>
                                    <th class="text-center" style="width:15%">Email</th>
                                    <th class="text-center" style="width:15%">Phone number</th>
                                    <th class="text-center" style="width:10%">Status</th>
                                    <th class="text-center" style="width:15%">Action</th>
                                    
                                </tr>
                            </thead>

                            <tbody>
                                <?php foreach ($list_users as $key => $value): ?>
                                    <tr>
                                        <td class="text-center" style="width:5%">
                                            <input type="checkbox" class="flat checkbox" name="table_records">
                                        </td>
                                        <td class="text-center" style="width:5%"><?php echo (int) ($key + 1) ?></td>
                                        <td class="text-center" style="width:25%"><a href="{{url('admin/profile/<?php echo $value->id; ?>')}}"><?php echo $value->fullname; ?></a></td>
                                        <td class="text-center" style="width:10%"><?php echo $value->gender? 'Male':'Female'; ?></td>
                                        <td class="text-center" style="width:15%"><?php echo $value->email; ?></td>
                                        <td class="text-center" style="width:15%"><?php echo $value->phone_number;?></td>
                                        <td class="text-center" style="width:10%">
                                            <?php echo $value->status? '<button type="button" class="btn btn-round btn-success btn-xs">Active</button>':'<button type="button" class="btn btn-round btn-danger">Not Active</button>'; ?>
                                        </td>
                                        <td class="text-center" style="width:15%">
                                            <?php 
                                            if($value->level == 1){
                                                echo $level = "<ul class='list-inline list-unstyled action_person'><li><span class='fa fa-list'></span></li>"
                                                        . "<li><span class='fa fa-eye'></span></li>"
                                                        . "<li><span class='fa fa-pencil-square-o '></span></li>"
                                                        . "<li><span class='fa fa-trash-o'></span></li></ul>";
                                            }else{
                                                echo $level = "<ul class='list-inline list-unstyled action_person'><li><span class='fa fa-list'></span></li>"
                                                        . "<li><span class='fa fa-eye'></span></li>"
                                                        . "<li><span class='fa fa-pencil-square-o '></span></li></ul>";
                                            } 
                                            ?>

                                        </td>
                                        
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
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

<!-- Custom Theme Scripts -->

<script type="text/javascript" src="{{asset('public/backend/js/products.js')}}"></script>

<script type="text/javascript" src="{{asset('public/build/js/custom.js')}}"></script>
<script type="text/javascript">
    //----------------Datatables-----------
    var $datatable = $('#datatable-buttons');

    $datatable.dataTable({
        'order': [[1, 'asc']],
        'columnDefs': [
            {orderable: true, targets: [0]}
        ]
    });
</script>
@endsection