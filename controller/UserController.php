<?php
include_once 'model/pdo.php';
include_once 'model/User.php';

class UserController {
	private $pseudo;
	private $password;
	private $bdd;

	public function __construct($pseudo,$password){
        $this->pseudo = $pseudo;
        $this->password = md5($password);
        $this->bdd = Connexion::bdd();
	}

	public function signIn(){
        $reponse = User::checkUserAccountExist(array("pseudo"=>$this->pseudo));
		if($reponse){
			if($this->password == $reponse['password']){
				return 'ok';
			} else {
				$erreur='votre mot de passe est incorrect';
				return $erreur;
			}
		} else {
			$erreur = 'le pseudo est inexistant';
			return $erreur;
		}
	}

	public function createSession(){
        $requete = User::getUserInfo(array("pseudo"=>$this->pseudo));
        
        $_SESSION['IdUser'] = $requete['IdUser'];
        $_SESSION['pseudo'] = $this->pseudo;

        return 1;
    }

    public function createAccount(){
        $requete = User::createUserAccount(array("pseudo"=>$this->pseudo,"password"=>$this->password));
        return 1;
    }
}
