<?php
include_once '../pdo/pdo.php';

$bdd = bdd();
$productsArray = [];
$categoriesArray = [];

$productsJson = file_get_contents("products.json");
$products = json_decode($productsJson, true);

foreach($products as $key => $value){

    //insert products
    if( !in_array($value["ref"], $productsArray) ){
        array_push($productsArray,$value["ref"]);

        try{
            $params = [];

            $SQL="  INSERT INTO product (ref, name, type, price, shipping, description, manufacturer, Image) 
                    VALUES (:ref, :name, :type, :price, :shipping, :description, :manufacturer, :Image)";
            $prep = $bdd->prepare($SQL);

            $params["ref"] = $value["ref"];
            $params["name"] = $value["name"];
            $params["type"] = $value["type"];
            $params["price"] = $value["price"];
            $params["shipping"] = $value["shipping"];
            $params["description"] = $value["description"];
            $params["manufacturer"] = $value["manufacturer"];
            $params["Image"] = $value["image"];

            $res = $prep->execute($params);
            if(!$res){
                $error = $prep->errorInfo();
                echo "Error scriptsPHP insert products : {$error[2]}";
                exit();
            }
        }
        catch (\Exception $exception) {
            var_dump($exception);
            exit('error');
        }
    }


    //insert categories
    foreach( $value["category"] as $keyC => $valueC ){
        
        if( !in_array($valueC["id"], $categoriesArray) ){
            array_push($categoriesArray,$valueC["id"]);
            try{
                $params = [];

                $SQL="INSERT INTO category (id,name) VALUES (:id,:name)";
                $prep = $bdd->prepare($SQL);

                $params["id"] = $valueC["id"];
                $params["name"] = $valueC["name"];

                $res = $prep->execute($params);
                if(!$res){
                    $error = $prep->errorInfo();
                    echo "Error scriptsPHP insert categories : {$error[2]}";
                    exit();
                }
            }
            catch (\Exception $exception) {
                var_dump($exception);
                exit('error');
            }
        }
    }

}

