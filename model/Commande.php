<?php
include_once 'model/pdo.php';

class Commande {

    public static function createCommande(array $args){
        $bdd = Connexion::bdd();
        try{
            $SQL="INSERT INTO commande(user_id) VALUES (:user_id)";
            $prep = $bdd->prepare($SQL);

            $res = $prep->execute(['user_id'=>$args["user_id"]]);
            
            if(!$res){
                $error = $prep->errorInfo();
                echo "Error createCommande : {$error[2]}";
                exit();
            }else{
                $lastIdCommande = $bdd->lastInsertId();
                $saladeLoop = [];
                for($i=0;$i<count($args["ref_products"]);$i++){
                    $refs = $args["ref_products"][$i];
                    $refsExplosed = explode(',',$refs);
                    for($j=0;$j<count($refsExplosed);$j++){
                        $refsExplosed2 = explode(':',$refsExplosed[$j]);
                        for($k=0;$k<count($refsExplosed2);$k++){
                            $trimmed1 = trim($refsExplosed2[$k], '"');
                            $trimmed2 = trim($trimmed1, '}');
                            if( preg_match('~[0-9]+~', $trimmed2) ){
                                array_push($saladeLoop,$trimmed2);
                            }
                        }
                    }
                }

                for($p=0;$p<count($saladeLoop);$p++){
                    try{
                        $paramsAssoc = [];
                        $SQL1="INSERT INTO commandeproductassoc(Id_Commande,ref_product,Qte) VALUES (:Id_Commande,:ref_product,:Qte)";
                        $prep1 = $bdd->prepare($SQL1);
                        
                        $paramsAssoc["Id_Commande"] = $lastIdCommande;
                        if( strlen($saladeLoop[$p]) > 2 ){
                            $paramsAssoc["ref_product"] = $saladeLoop[$p];
                            $paramsAssoc["Qte"] = $saladeLoop[$p+1];

                            $res1 = $prep1->execute($paramsAssoc);
                            if(!$res1){
                                $error1 = $prep1->errorInfo();
                                echo "Error create Commande Assoc : {$error1[2]}";
                                exit();
                            }

                        }
                        
                    }
                    catch (\Exception $exception) {
                        var_dump($exception);
                        exit('error');
                    }
                }

                return true;
            }
        }
        catch (\Exception $exception) {
            var_dump($exception);
            exit('error');
        }
    }

    public static function createCommandeAssoc(array $args){
        $bdd = Connexion::bdd();
        
    }

}