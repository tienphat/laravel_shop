<div class="ml-box-header">
    <h3>Sản phẩm</h3>
</div>
<?php
$listproduct = DB::table('menu')->where('level', 2)->get();
$html_menu = "<div class='ml-list-box'><ul class='list-unstyled'>";
foreach ($listproduct as $menu)
{
    $html_menu.="<li>";
    $html_menu.="<span class='fa fa-arrow-circle-right'></span> ";
    $html_menu.="<a href='san-pham/" . $menu->link . "' title='" . $menu->title . "'>" . $menu->title . "</a>";
    $level = $menu->level + 1;
    $parentid = $menu->id;
    $listproduct1 = DB::table('menu')->where([
        ['level', $level],
        ['parentid', $parentid]
    ])->get();
    if (count($listproduct1))
    {
        $html_menu.='<ul>';
        foreach ($listproduct1 as $menu1)
        {
            $html_menu.="<li>";
            $html_menu.="<a href='san-pham/" . $menu1->link . "' title='" . $menu1->title . "'>" . "<i class='fa fa-caret-right'></i> " . $menu1->title . "</a>";
            $html_menu.="</li>";
        }
        $html_menu.='</ul>';
    }

    $html_menu.="</li>";
}
$html_menu.="</ul></div>";

echo $html_menu;
?>
