<?php
include_once 'model/pdo.php';
include_once 'model/Commande.php';

class ShoppingController {
    //check session before making the command
    public function createCommande(){
        //if session introuvable, mets les post ds une session et crée la commande
        if(isset($_SESSION['IdUser'])) {
            Commande::createCommande(array('user_id'=>$_SESSION["IdUser"]));
        }else{
            header('Location:sign-in.php');
            exit();
        }
    }

}