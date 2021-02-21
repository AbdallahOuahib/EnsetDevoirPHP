<?php 
    include_once 'model/Product.php';
    include_once 'controller/ShoppingController.php';

    if( isset($_POST['ref_product']) ){
        $shop = new ShoppingController($_POST['ref_product']);
        $verif = $shop->createCommande();
        
        if($verif == "ok"){
              $user->createSession();
              header('Location:http://localhost/ecommerceENSET/index.php');
              exit();
        } else { 
          header('Location:sign-in.php');
          exit;
        }
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