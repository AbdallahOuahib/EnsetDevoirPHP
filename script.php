<?php
include_once 'model/pdo.php';

$bdd = Connexion::bdd();
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
            }else{
                echo "Products are inserted! <br/>";
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

                $SQL="INSERT INTO categorie (id,name) VALUES (:id,:name)";
                $prep = $bdd->prepare($SQL);

                $params["id"] = $valueC["id"];
                $params["name"] = $valueC["name"];

                $res = $prep->execute($params);
                if(!$res){
                    $error = $prep->errorInfo();
                    echo "Error scriptsPHP insert categories : {$error[2]}";
                    exit();
                }else{
                    echo "Categories are inserted! <br/>";
                }
            }
            catch (\Exception $exception) {
                var_dump($exception);
                exit('error');
            }
        }

        //insert categories link with products
        try{
            $params1 = [];

            $SQL1="INSERT INTO categories (ref_product,id_category) VALUES (:ref_product,:id_category)";
            
            $prep1 = $bdd->prepare($SQL1);

            $params1["ref_product"] = $value["ref"];
            $params1["id_category"] = $valueC["id"];

            $res1 = $prep1->execute($params1);
            if(!$res1){
                $error = $prep1->errorInfo();
                echo "Error scriptsPHP insert categories : {$error[2]}";
                exit();
            }else{
                echo "Link between categories & products are created! <br/>";
            }
        }
        catch (\Exception $exception) {
            var_dump($exception);
            exit('error');
        }
    }

}

