<?php
include_once 'model/pdo.php';

class Product {

    public static function countProducts(array $args){
        $bdd = Connexion::bdd();
        
        try{
            $SQL=" SELECT  COUNT(*) as total FROM product";

            if( isset($args["category"]) && !empty($args["category"]) ){
                $SQL.=" INNER JOIN categories ON categories.ref_product = product.ref
                        INNER JOIN categorie ON categories.id_category = categorie.id
                        WHERE categorie.id LIKE :category";
            }

            $prep = $bdd->prepare($SQL);

            if( isset($args["category"]) && !empty($args["category"]) ){
                $prep->execute(['category'=>$args["category"]]);
            }else{
                $prep->execute();
            }

            $row=$prep->fetch();
            return $row;
        }
        catch (\Exception $exception) {
            var_dump($exception);
            exit('error');
        }
    }

    public static function getProducts(array $args){
        $bdd = Connexion::bdd();
        try{

            $SQL="SELECT product.* FROM product ";

            if( isset($args["category"]) && !empty($args["category"]) ){
                $SQL .= " INNER JOIN categories ON categories.ref_product = product.ref
                INNER JOIN categorie ON categories.id_category = categorie.id
                WHERE categorie.id LIKE :category
                ORDER BY product.price ASC
                LIMIT :offset, :per_page";
            } else {
                $SQL .= " ORDER BY product.price ASC LIMIT :offset, :per_page";
            }

            $prep = $bdd->prepare($SQL);

            if( isset($args["category"]) && !empty($args["category"]) ){
                $prep->execute(['offset'=>$args["offset"], 'per_page'=>$args["per_page"], 'category'=>$args["category"]]);
            }else{
                $prep->execute(['offset'=>$args["offset"], 'per_page'=>$args["per_page"]]);
            }

            $data = [];
            while ( $row = $prep->fetch(\PDO::FETCH_ASSOC) ) {
                array_push($data,$row);
            }
            return $data;
        }
        catch (\Exception $exception) {
            var_dump($exception);
            exit('error');
        }
    }

    public static function getCategoriesByProduct(array $args){
        $bdd = Connexion::bdd();
        try{
            $params = [];
            $SQL="  SELECT categorie.name as cat FROM categories 
                    INNER JOIN categorie ON categorie.id=categories.id_category
                    WHERE categories.ref_product = :ref_product";

            $prep = $bdd->prepare($SQL);

            $params["ref_product"] = $args["ref_product"];

            $res = $prep->execute($params);

            if(!$res){
                $error = $prep->errorInfo();
                echo "Error getCategoriesByProduct : {$error[2]}";
                exit();
            }

            $data = [];
            while($row=$prep->fetch()){
                array_push($data,$row);
            }
            return $data;
        }
        catch (\Exception $exception) {
            var_dump($exception);
            exit('error');
        }
    }


    public static function getCategories(){
        $bdd = Connexion::bdd();
        try{

            $SQL="SELECT categorie.* FROM categorie";
            $prep = $bdd->prepare($SQL);
            $prep->execute();

            $data = [];
            while ( $row = $prep->fetch(\PDO::FETCH_ASSOC) ) {
                array_push($data,$row);
            }
            return $data;
        }
        catch (\Exception $exception) {
            var_dump($exception);
            exit('error');
        }
    }

    public static function getCountProductsByCategroy(array $args){
        $bdd = Connexion::bdd();
        try{

            $SQL="SELECT COUNT(*) as countP FROM product
                    INNER JOIN categories ON categories.ref_product = product.ref
                    INNER JOIN categorie ON categories.id_category = categorie.id
                    WHERE categorie.id LIKE :id";
            $prep = $bdd->prepare($SQL);
            $prep->execute(['id'=>$args["id"]]);

            $row=$prep->fetch();
            return $row;
        }
        catch (\Exception $exception) {
            var_dump($exception);
            exit('error');
        }
    }

    //getProductsByCategory
}