<?php 
    include_once 'model/Product.php';
    
    if(!isset($_SESSION['idUser'])) {
        header("Location: view/sign-in.php");
        exit;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Devoir WEB</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="view/assets/css/style.css" rel="stylesheet" >
</head>