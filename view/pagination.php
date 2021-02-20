<?php
    $page = 1;
    if (isset($_GET['page'])) {
      $page = filter_var($_GET['page'], FILTER_SANITIZE_NUMBER_INT);
    }
  
    $per_page = 12;

    $total = Product::countProducts();

    $page = (isset($_GET['page'])) ? (int)$_GET['page'] : 1;
    $total_pages = ceil($total["total"] / $per_page);
    $offset = ($page-1) * $per_page;

?>
<section class="panel">
    <div class="panel-body">
        <div class="pull-right">
            <ul class="pagination pagination-sm pro-page-list">
                <?php
                    $links = "";
                    for ($i = 1; $i <= $total_pages; $i++) {
                        $links .= ($i != $page ) ? "<li><a href='index.php?page=$i'>Page $i</a></li> " : "<li class='active'><a href='index.php?page=$i'>Page $i</a></li> ";
                    }
                    echo $links;
                ?>
            </ul>
        </div>
    </div>
</section>