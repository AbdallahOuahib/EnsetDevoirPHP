<?php
include_once 'model/Product.php';

$products = Product::getProducts();

foreach($products as $key => $value ){
    echo "ref : ".$value["ref"]."<br/>";
    echo "name : ".$value["name"]."<br/>";
    echo "type : ".$value["type"]."<br/>";
    echo "price : ".$value["price"]."<br/>";
    echo "manufacturer : ".$value["manufacturer"]."<br/>";
    echo "image : ".$value["Image"]."<br/>";
    $categories = Product::getCategoriesByProduct(array("ref_product"=>$value["ref"]));

    echo "categories : <br/>";
    echo "<ul>";
    foreach($categories as $keyCat => $valueCat ){
        echo "<li>".$valueCat["cat"]."</li>";
    }
    echo "</ul>";

    echo "<br/>";
}
