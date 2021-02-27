<?php
ob_start();
include_once 'controller/UserController.php';

$bdd = Connexion::bdd();

if(isset($_SESSION['IdUser'])) {
     header('Location:index.php');
     exit;
}

if(isset($_POST['pseudo']) AND isset($_POST['password'])){
    $user = new UserController($_POST['pseudo'],md5($_POST['password']));
    $verif = $user->createAccount();
    if($verif){
        header('Location:sign-in.php');
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
    <link href="view/assets/css/signin.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">
      <form class="form-signin" action="" method="POST" data-ajax="false">
        <h2 class="form-signin-heading">Please sign up in Devoir WEB</h2>
        <label for="pseudo" class="sr-only">Pseudo</label>
        <input  type="text" id="pseudo" name="pseudo" class="form-control" 
                placeholder="Pseudo" required autofocus>
        <label for="password" class="sr-only">Password</label>
        <input  type="password" id="password" name="password" class="form-control" 
                placeholder="Password" required>

        <label for="password2" class="sr-only">Rewrite password</label>
        <input  type="password2" id="password2" name="password2" class="form-control" 
                placeholder="Password" required>

        <div class="nosamepass" style="display:none;">Passwords Don't Match</div>
        <button class="btn btn-lg btn-primary btn-block btn-submit" type="submit">Sign up</button>

      </form>
    </div> <!-- /container -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="assets/js/user.js"></script>
  </body>
</html>
