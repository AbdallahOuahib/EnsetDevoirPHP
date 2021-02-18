<?php

function bdd(){
    try {
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        //$bdd = new PDO('mysql:host=localhost;dbname=tformma_tform','tformma_root','tform2016');
        $bdd = new PDO('mysql:host=localhost;dbname=boutique','root','');
        //, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"

    } catch (Exception $e) {
            die('Erreur : ' . $e->getMessage());
    }
    return $bdd;

}