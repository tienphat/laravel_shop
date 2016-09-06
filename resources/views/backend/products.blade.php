@extends('backend.master')

@section('css')
    <link rel="stylesheet" href="{{asset('public/backend/css/products.css')}}" />
@endsection

@section('page_content')
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
<!--                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Settings 1</a>
                                    </li>
                                    <li><a href="#">Settings 2</a>
                                    </li>
                                </ul>-->
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
<!--                        <p class="text-muted font-13 m-b-30">
                            The Buttons extension for DataTables provides a common set of options, API methods and styling to display buttons on a page that will interact with a DataTable. The core library provides the based framework upon which plug-ins can built.
                        </p>-->
                        <table id="datatable-buttons datatable-checkbox" class="table table-striped table-bordered bulk_action">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" id="check-all" class="flat"></th>
                                    <th class="text-center" style="width:5%">STT</th>
                                    <th class="text-center" style="width:25%">Tên sản phẩm</th>
                                    <th class="text-center" style="width:15%">Màu</th>
                                    <th class="text-center" style="width:15%">Size</th>
                                    <th class="text-center" style="width:10%">Số lượng</th>
                                    <th class="text-center" style="width:10%">Giảm giá</th>
                                    <th class="text-center" style="width:20%">Giá</th>
                                </tr>
                            </thead>
                            
                            <tbody>
                                <tr ng-repeat='item in listProducts'>
                                    <td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td class="text-center">@{{$index + 1}}</td>
                                    <td class="text-center">@{{item.product_name}}</td>
                                    <td class="text-center">@{{item.product_color}}</td>
                                    <td class="text-center">@{{item.product_size}}</td>
                                    <td class="text-center">@{{item.product_quantity}}</td>
                                    <td class="text-center">@{{item.product_discount}}</td>
                                    <td class="text-center">@{{item.product_price}}</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Garrett Winters</td>
                                    <td>Accountant</td>
                                    <td>Tokyo</td>
                                    <td>63</td>
                                    <td>2011/07/25</td>
                                    <td>$170,750</td><td>$112,000</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Ashton Cox</td>
                                    <td>Junior Technical Author</td>
                                    <td>San Francisco</td>
                                    <td>66</td>
                                    <td>2009/01/12</td>
                                    <td>$86,000</td><td>$112,000</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Cedric Kelly</td>
                                    <td>Senior Javascript Developer</td>
                                    <td>Edinburgh</td>
                                    <td>22</td>
                                    <td>2012/03/29</td>
                                    <td>$433,060</td><td>$112,000</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Airi Satou</td>
                                    <td>Accountant</td>
                                    <td>Tokyo</td>
                                    <td>33</td>
                                    <td>2008/11/28</td>
                                    <td>$162,700</td><td>$112,000</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Brielle Williamson</td>
                                    <td>Integration Specialist</td>
                                    <td>New York</td>
                                    <td>61</td>
                                    <td>2012/12/02</td>
                                    <td>$372,000</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Herrod Chandler</td>
                                    <td>Sales Assistant</td>
                                    <td>San Francisco</td>
                                    <td>59</td>
                                    <td>2012/08/06</td>
                                    <td>$137,500</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Rhona Davidson</td>
                                    <td>Integration Specialist</td>
                                    <td>Tokyo</td>
                                    <td>55</td>
                                    <td>2010/10/14</td>
                                    <td>$327,900</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Colleen Hurst</td>
                                    <td>Javascript Developer</td>
                                    <td>San Francisco</td>
                                    <td>39</td>
                                    <td>2009/09/15</td>
                                    <td>$205,500</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Sonya Frost</td>
                                    <td>Software Engineer</td>
                                    <td>Edinburgh</td>
                                    <td>23</td>
                                    <td>2008/12/13</td>
                                    <td>$103,600</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Jena Gaines</td>
                                    <td>Office Manager</td>
                                    <td>London</td>
                                    <td>30</td>
                                    <td>2008/12/19</td>
                                    <td>$90,560</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Quinn Flynn</td>
                                    <td>Support Lead</td>
                                    <td>Edinburgh</td>
                                    <td>22</td>
                                    <td>2013/03/03</td>
                                    <td>$342,000</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Charde Marshall</td>
                                    <td>Regional Director</td>
                                    <td>San Francisco</td>
                                    <td>36</td>
                                    <td>2008/10/16</td>
                                    <td>$470,600</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Haley Kennedy</td>
                                    <td>Senior Marketing Designer</td>
                                    <td>London</td>
                                    <td>43</td>
                                    <td>2012/12/18</td>
                                    <td>$313,500</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Tatyana Fitzpatrick</td>
                                    <td>Regional Director</td>
                                    <td>London</td>
                                    <td>19</td>
                                    <td>2010/03/17</td><td>$112,000</td>
                                    <td>$385,750</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Michael Silva</td>
                                    <td>Marketing Designer</td>
                                    <td>London</td>
                                    <td>66</td>
                                    <td>2012/11/27</td><td>$112,000</td>
                                    <td>$198,500</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Paul Byrd</td>
                                    <td>Chief Financial Officer (CFO)</td>
                                    <td>New York</td>
                                    <td>64</td>
                                    <td>2010/06/09</td>
                                    <td>$725,000</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Gloria Little</td>
                                    <td>Systems Administrator</td>
                                    <td>New York</td>
                                    <td>59</td>
                                    <td>2009/04/10</td>
                                    <td>$237,500</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Bradley Greer</td>
                                    <td>Software Engineer</td>
                                    <td>London</td>
                                    <td>41</td>
                                    <td>2012/10/13</td><td>$112,000</td>
                                    <td>$132,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Dai Rios</td>
                                    <td>Personnel Lead</td>
                                    <td>Edinburgh</td>
                                    <td>35</td>
                                    <td>2012/09/26</td>
                                    <td>$217,500</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Jenette Caldwell</td>
                                    <td>Development Lead</td>
                                    <td>New York</td>
                                    <td>30</td>
                                    <td>2011/09/03</td>
                                    <td>$345,000</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Yuri Berry</td>
                                    <td>Chief Marketing Officer (CMO)</td>
                                    <td>New York</td>
                                    <td>40</td>
                                    <td>2009/06/25</td>
                                    <td>$675,000</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Caesar Vance</td>
                                    <td>Pre-Sales Support</td>
                                    <td>New York</td>
                                    <td>21</td>
                                    <td>2011/12/12</td>
                                    <td>$106,450</td><td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Doris Wilder</td>
                                    <td>Sales Assistant</td>
                                    <td>Sidney</td>
                                    <td>23</td>
                                    <td>2010/09/20</td>
                                    <td>$85,600</td><td>$112,000</td>
                                </tr>
                                
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Serge Baldwin</td>
                                    <td>Data Coordinator</td>
                                    <td>Singapore</td>
                                    <td>64</td>
                                    <td>2012/04/09</td>
                                    <td>$138,575</td>
                                    <td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Zenaida Frank</td>
                                    <td>Software Engineer</td>
                                    <td>New York</td>
                                    <td>63</td>
                                    <td>2010/01/04</td>
                                    <td>$125,250</td>
                                    <td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Zorita Serrano</td>
                                    <td>Software Engineer</td>
                                    <td>San Francisco</td>
                                    <td>56</td>
                                    <td>2012/06/01</td>
                                    <td>$115,000</td>
                                    <td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Jennifer Acosta</td>
                                    <td>Junior Javascript Developer</td>
                                    <td>Edinburgh</td>
                                    <td>43</td>
                                    <td>2013/02/01</td>
                                    <td>$75,650</td>
                                    <td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Cara Stevens</td>
                                    <td>Sales Assistant</td>
                                    <td>New York</td>
                                    <td>46</td>
                                    <td>2011/12/06</td>
                                    <td>$145,600</td>
                                    <td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Hermione Butler</td>
                                    <td>Regional Director</td>
                                    <td>London</td>
                                    <td>47</td>
                                    <td>2011/03/21</td>
                                    <td>$356,250</td>
                                    <td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Lael Greer</td>
                                    <td>Systems Administrator</td>
                                    <td>London</td>
                                    <td>21</td>
                                    <td>2009/02/27</td>
                                    <td>$103,500</td>
                                    <td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Jonas Alexander</td>
                                    <td>Developer</td>
                                    <td>San Francisco</td>
                                    <td>30</td>
                                    <td>2010/07/14</td>
                                    <td>$86,500</td>
                                    <td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Shad Decker</td>
                                    <td>Regional Director</td>
                                    <td>Edinburgh</td>
                                    <td>51</td>
                                    <td>2008/11/13</td>
                                    <td>$183,000</td>
                                    <td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Michael Bruce</td>
                                    <td>Javascript Developer</td>
                                    <td>Singapore</td>
                                    <td>29</td>
                                    <td>2011/06/27</td>
                                    <td>$183,000</td>
                                    <td>$112,000</td>
                                </tr>
                                <tr><td><input type="checkbox" class="flat" name="table_records"></td>
                                    <td>Donna Snider</td>
                                    <td>Customer Support</td>
                                    <td>New York</td>
                                    <td>27</td>
                                    <td>2011/01/25</td>
                                    <td>$112,000</td>
                                    <td>$112,000</td>
                                </tr>
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
<script src="{{asset('public/build/js/custom.min.js')}}"></script>

<script src="{{asset('public/backend/js/products.js')}}"></script>

<script type="text/javascript">
    //----------------Datatables-----------
    var handleDataTableButtons = function () {
        if ($("#datatable-buttons").length) {
            $("#datatable-buttons").DataTable({
                dom: "Bfrtip",
                buttons: [
                    {
                        extend: "copy",
                        className: "btn-sm"
                    },
                    {
                        extend: "csv",
                        className: "btn-sm"
                    },
                    {
                        extend: "excel",
                        className: "btn-sm"
                    },
                    {
                        extend: "pdfHtml5",
                        className: "btn-sm"
                    },
                    {
                        extend: "print",
                        className: "btn-sm"
                    },
                ],
                responsive: true
            });
        }
    };

    TableManageButtons = function () {
        "use strict";
        return {
            init: function () {
                handleDataTableButtons();
            }
        };
    }();

    $('#datatable').dataTable();

    $('#datatable-keytable').DataTable({
        keys: true
    });

    $('#datatable-responsive').DataTable();

    $('#datatable-scroller').DataTable({
//        ajax: "js/datatables/json/scroller-demo.json",
        deferRender: true,
        scrollY: 380,
        scrollCollapse: true,
        scroller: true
    });

    $('#datatable-fixed-header').DataTable({
        fixedHeader: true
    });

    var $datatable = $('#datatable-checkbox');

    $datatable.dataTable({
        'order': [[1, 'asc']],
        'columnDefs': [
            {orderable: true, targets: [0]}
        ]
    });
    $datatable.on('draw.dt', function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_flat-green'
        });
    });

    TableManageButtons.init();
</script>
@endsection