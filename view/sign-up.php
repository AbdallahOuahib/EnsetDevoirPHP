<?php
include_once '../model/pdo.php';
include_once '../../controller/UserController.php';

$bdd = Connexion::bdd();

if(isset($_SESSION['idUser'])) {
     header("Location: index.php");
     exit;
}

if(isset($_POST['pseudo']) AND isset($_POST['password'])){
    $user = new UserController($_POST['pseudo'],md5($_POST['password']));
    $verif = $user->createAccount();
    if($verif){
        header("Location: sign-in.php");
    } else { 
        $erreur = $verif; 
    }
}
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <link rel="canonical" href="https://getbootstrap.com/docs/3.4/examples/signin/">

    <title>Devoir WEB - Signup</title>

    <!-- Bootstrap core CSS -->
    <link href="https://getbootstrap.com/docs/3.4/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/signin.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">
      <form class="form-signin" action="" method="POST">
        <h2 class="form-signin-heading">Please sign up in Devoir WEB</h2>
        <label for="pseudo" class="sr-only">Pseudo</label>
        <input  type="text" id="pseudo" name="pseudo" class="form-control" 
                placeholder="Pseudo" required autofocus>
        <label for="password" class="sr-only">Password</label>
        <input  type="password" id="password" name="password" class="form-control" 
                placeholder="Password" required>
        <label for="password" class="sr-only">Rewrite password</label>
        <input  type="password2" id="password2" name="password2" class="form-control" 
                placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>
    </div> <!-- /container -->

  </body>
</html>
