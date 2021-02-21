<?php 
$categories = Product::getCategories();

?>
<ul class="nav prod-cat">
    <?php 
        foreach($categories as $key => $value){
            $countProducts = Product::getCountProductsByCategroy(array("id"=>$value["id"]));
            echo '<li><a href="home.php?page=1&category='.$value["id"].'" class="active"><i class="fa fa-angle-right"></i>'.$value["name"].' ('.$countProducts["countP"].') </a></li>';
        }
    ?>
</ul>