<?php
include_once 'model/pdo.php';

class Commande {

    public static function createCommande(array $args){
        $bdd = Connexion::bdd();
        try{
            $SQL="INSERT INTO commande(user_id) VALUES (:user_id)";
            $prep = $bdd->prepare($SQL);

            $prep->execute(['user_id'=>$args["user_id"]]);

            if(!$res){
                $error = $prep->errorInfo();
                echo "Error createCommande : {$error[2]}";
                exit();
            }else{
                $lastIdCommande = PDO::lastInsertId;
                //loop on args["ref_product];
                foreach( $args["ref_product"] as $key => $refValue ){
                    try{
                        $SQL="INSERT INTO commandeproductassoc(Id_Commande,ref_product,Qte) VALUES (:Id_Commande,:ref_product,:Qte)";
                        $prep = $bdd->prepare($SQL);
            
                        $prep->execute(['Id_Commande'=>$lastIdCommande,'ref_product'=>$refValue,'Qte'=>$qte]);

                    }
                    catch (\Exception $exception) {
                        var_dump($exception);
                        exit('error');
                    }
                }
                

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