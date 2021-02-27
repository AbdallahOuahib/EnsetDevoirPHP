<?php
include_once 'controller/UserController.php';

$bdd = Connexion::bdd();
if(isset($_SESSION['IdUser'])) {
    header('Location:index.php');
    exit;
}

if(isset($_POST['pseudo']) AND isset($_POST['password'])){
    $user = new UserController($_POST['pseudo'],md5($_POST['password']));
    $verif = $user->signIn();
    
    if($verif == "ok"){
          $user->createSession();
          header('Location:index.php');
          exit();
    } else { 
      header('Location:sign-in.php');
      exit;
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
    <title>Devoir WEB - Sign in</title>

    <!-- Bootstrap core CSS -->
    <link href="https://getbootstrap.com/docs/3.4/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="view/assets/css/signin.css" rel="stylesheet">
  </head>

  <body class="backlogin">

    <div class="container">
        <form class="form-signin" action="" method="POST" data-ajax="false">
          <h2 class="form-signin-heading text-center">Please sign in Devoir WEB</h2>
          <div class="form-group">
            <label for="pseudo" class="sr-only">Pseudo</label>
            <input  type="text" id="pseudo" name="pseudo" class="form-control form-control-sm mb-2" 
                    placeholder="Pseudo" required autofocus>
          </div>
          <div class="form-group">
            <label for="password" class="sr-only">Password</label>
            <input  type="password" id="password" name="password" class="form-control form-control-sm mb-2" 
                    placeholder="Password" required>
          </div>
          <button class="btn btn-lg btn-primary btn-sm btn-block" type="submit">Sign in</button>
          <div class="linkaccount text-center"><a href="sign-up.php">Create Account for free!</a></div>
        </form>
    </div> <!-- /container -->

  </body>
</html>
