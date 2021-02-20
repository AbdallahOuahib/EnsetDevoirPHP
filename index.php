<?php include_once "view/header.php"; ?>
<body class="body">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
<?php include_once "view/shopping-cart.php"; ?>
<div class="container">
    <div class="col-md-3">
        <section class="panel">
            <div class="panel-body">
                <input type="text" placeholder="Keyword Search" class="form-control" />
            </div>
        </section>
        <section class="panel">
            <header class="panel-heading">
                Category
            </header>
            <div class="panel-body">
                <?php include_once "view/list-categories.php"; ?>
            </div>
        </section>
    </div>
    <div class="col-md-9">
        <?php include_once "view/pagination.php"; ?>
        <?php include_once "view/list-products.php"; ?>
    </div>
</div>

<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
(function(){
    $("#cart").on("click", function() {
        $(".shopping-cart").fadeToggle( "fast");
    });
})();
</script>
</body>
</html>