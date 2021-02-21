<?php
include_once 'model/pdo.php';
include_once 'model/Commande.php';

class ShoppingController {

    private $ref;
	private $bdd;

	public function __construct($ref){
        $this->ref = $ref;
        $this->bdd = Connexion::bdd();
	}

    public function createCommande(){
        if(isset($_SESSION['IdUser'])) {
            Commande::createCommande(array('user_id'=>$_SESSION["IdUser"],'ref_products'=>$this->ref));
        }else{
            header('Location:sign-in.php');
            exit();
        }
    }

}