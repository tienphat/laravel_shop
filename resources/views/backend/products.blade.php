@extends('backend.layout.master')

@section('content')
<!-- page content -->
<div class="right_col" role="main" ng-controller="products_page">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Danh mục sản phẩm</h3>
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
                        <h2>Sản phẩm</h2>
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
                        <table id="datatable-buttons" class="table table-striped jambo_table table-bordered table-responsive bulk_action">
                            <thead>
                                <tr>
                                    <th class="text-center" style="width:5%" >
                                        <input type="checkbox" id="check-all" class="flat" name="table_records">
                                    </th>
                                    <th class="text-center" style="width:5%">STT</th>
                                    <th class="text-center" style="width:10%">Hình ảnh</th>
                                    <th class="text-center" style="width:20%">Tên sản phẩm</th>
                                    <th class="text-center" style="width:15%">Màu</th>
                                    <th class="text-center" style="width:15%">Size</th>
                                    <th class="text-center" style="width:10%">Số lượng</th>
                                    <th class="text-center" style="width:10%">Giá (VNĐ)</th>
                                    <th class="text-center" style="width:10%">Giảm giá</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php foreach ($list_products as $key => $value): ?>
                                    <tr>
                                        <td class="text-center" style="width:5%">
                                            <input type="checkbox" class="flat checkbox" name="table_records">
                                        </td>
                                        <td class="text-center" style="width:5%"><?php echo (int) ($key + 1) ?></td>
                                        <td class="text-center" style="width:10%;">
                                            <img src="{{url('/')}}/public/images/uploads/products/<?php echo $value->product_images ?>" alt="<?php echo $value->product_name; ?>" width="50" height="50">
                                        </td>
                                        <input type="hidden" value="<?php echo $value->product_name; ?>">
                                        <td class="text-center" style="width:20%">
                                            <a href="{{url('admin/products')}}/<?php echo $value->product_id; ?>"><?php echo $value->product_name; ?></a>
                                        </td>
                                        <td class="text-center" style="width:15%"><?php echo $value->product_color; ?></td>
                                        <td class="text-center" style="width:15%"><?php echo (int) $value->product_size; ?></td>
                                        <td class="text-center" style="width:10%"><?php echo $value->product_quantity; ?></td>
                                        <td class="text-center" style="width:10%"><?php echo number_format($value->product_price, 0, '.', '.'); ?></td>
                                        <td class="text-center" style="width:10%"><?php echo (int) ($value->product_discount * 100); ?> %</td>
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
<!-- jQuery <-->
<script src="{{asset('public/libs/fastclick/lib/fastclick.js')}}"></script>

<!-- NProgress -->
<script src="{{asset('public/libs/nprogress/nprogress.js')}}"></script>
<!-- iCheck -->
<script src="{{asset('public/libs/iCheck/icheck.min.js')}}"></script>
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
<script src="{{asset('public/build/js/custom.js')}}"></script>
<script src="{{asset('public/backend/js/products.js')}}"></script>

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