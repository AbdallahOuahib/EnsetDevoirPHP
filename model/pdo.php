<?php
session_start();
class Connexion {
    public static function bdd(){
        try {
            $bdd = new PDO('mysql:host=localhost;dbname=boutique','root','');
            $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $bdd->setAttribute(PDO::ATTR_EMULATE_PREPARES,false);
            //, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"
    
        } catch (Exception $e) {
                die('Erreur : ' . $e->getMessage());
        }
        return $bdd;
    }
}
