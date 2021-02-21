<?php
include_once 'pdo.php';

class User {

    public static function checkUserAccountExist(array $args){
        $bdd = Connexion::bdd();
        try{
            $SQL="SELECT * FROM user WHERE pseudo LIKE :pseudo";
            $prep = $bdd->prepare($SQL);

            $prep->execute(['pseudo'=>$args["pseudo"]]);
            $row=$prep->fetch();

            return $row;
        }
        catch (\Exception $exception) {
            var_dump($exception);
            exit('error');
        }
    }

    public static function createUserAccount(array $args){
        $bdd = Connexion::bdd();
        try{
            $SQL="INSERT INTO USER(pseudo,password) VALUES (:pseudo,:password)";
            $prep = $bdd->prepare($SQL);

            $prep->execute(['pseudo'=>$args["pseudo"],'password'=>$args["password"]]);

            $res = $prep->execute($params);
            if(!$res){
                $error = $prep->errorInfo();
                echo "Error createUserAccount : {$error[2]}";
                exit();
            }else{
                return true;
            }
        }
        catch (\Exception $exception) {
            var_dump($exception);
            exit('error');
        }
    }

    public static function getUserInfo(array $args){
        try{

            $requete = $bdd->prepare('SELECT IdUser FROM user WHERE pseudo LIKE :pseudo ');
            $requete->execute(['pseudo'=>$args["pseudo"]]);
            $requete = $requete->fetch();

            return $requete;

        } catch (\Exception $exception) {
            var_dump($exception);
            exit('error');
        }
    }

}