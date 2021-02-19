<?php
include_once 'model/pdo.php';

class Product {

    public static function getProducts(){
        $bdd = Connexion::bdd();
        try{
            $SQL="SELECT product.* FROM product";

            $prep = $bdd->query($SQL);
            $prep->execute();

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

}