<div class="row">
    <h3><i class="fa fa-shopping-cart"></i>   Danh mục sản phẩm</h3>
    <div class="list_product">
        <?php foreach ($products as $row): ?>
            <div class="col-xs-6 col-sm-4 col-md-3">
                <div class="thumbnail">
                    <div class="img-product">
                        <a href="<?php echo $row->product_alias; ?>">
                            <img src="{{asset('public/frontend/img/product/' . $row->product_images)}}" alt="Hình ảnh sản phẩm">
                        </a>
                    </div>
                    <div class="caption">
                        <div class="item-title">
                            <a href="<?php echo $row->product_alias; ?>">
                                <h3><?php echo $row->product_name; ?></h3>
                            </a>
                        </div>
                        <div class="item-content">
                            <p>
                                <?php
                                if (number_format($row->price_sale) != 0)
                                {
                                    echo "<span>" . number_format($row->price_sale, 0, '.', '.') . "<sup><u>đ</u></sup></span>";
                                    echo " <span class='is_sale'>" . number_format($row->price, 0, '.', '.') . "<sup><u>đ</u></sup></span>";
                                }
                                else
                                {
                                    echo "<span class='no_sale'>" . number_format($row->price, 0, '.', '.') . "<sup><u>đ</u></sup></span>";
                                }
                                ?>
                            </p>
                        </div>
                    </div>
                    <div class="bg_hidden">
                        <a href="<?php echo $row->product_alias; ?>" class="over_bg"></a>
                        <a href="javascript:void(0)" onclick="dat_mua('<?php echo $row->id; ?>')" class="btn btn-primary dat_mua">Đặt mua</a>
                    </div>
                </div>
            </div>
            <?php // echo $row->name; ?>

                <?php endforeach; ?>
    </div>

</div>