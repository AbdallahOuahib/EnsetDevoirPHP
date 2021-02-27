<nav>
  <div class="container">
    <ul class="navbar-left">
      <li><a href="#">Home</a></li>
    </ul> <!--end navbar-left -->

    <ul class="navbar-right">
      <li> <i class="fa fa-user"></i> <?php echo $_SESSION["pseudo"]  ?> - <a href="deconnexion.php"> <i class="fa fa-sign-out"></i> Deconnexion </a></li>
      <li><a href="#" id="cart"><i class="fa fa-shopping-cart"></i> Panier <span class="badge badge-items">0</span></a></li>
    </ul> <!--end navbar-right -->
  </div> <!--end container -->
</nav>
<div class="container">
  <div class="shopping-cart" style="display: none;">
    <div class="shopping-cart-header">
      <i class="fa fa-shopping-cart cart-icon"></i><span class="badge badge-items">0</span>
      <div class="shopping-cart-total">
        <span class="lighter-text">Total:</span>
        <span class="main-color-text total-price">0</span>
      </div>
      <div class="shopping-cart-total" style="margin-right:10px">
        <span class="lighter-text">Shipping:</span>
        <span class="main-shipping-text total-price">0</span>
      </div>
    </div> <!--end shopping-cart-header -->

    <ul class="shopping-cart-items list-unstyled">

    </ul>
    <form action="" method="POST">
      <input type="hidden" id="hiddenRefProd" name="ref_product[]" value="" />
      <button href="#" class="btn btn-info button btn-sm" type="submit">Commander</button>
    </form>
    
  </div> <!--end shopping-cart -->
</div> <!--end container -->