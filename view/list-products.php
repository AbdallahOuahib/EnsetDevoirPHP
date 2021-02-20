<div class="row product-list">
    <?php 
    $category = (isset($_GET['category'])) ? (string)$_GET['category'] : "";
    $products = Product::getProducts(array("offset"=>$offset,"per_page"=>$per_page,"category"=>$category));
    foreach($products as $key => $value ){ ?>
        <div class="col-md-4">
            <section class="panel panel-product">
                <div class="pro-img-box">
                    <img src="<?php echo $value["Image"]; ?>" 
                        alt='<?php echo $value["name"]; ?>' class="img-responsive" />
                    <a href="#" class="adtocart">
                        <i class="fa fa-shopping-cart"></i>
                    </a>
                </div>

                <div class="panel-body text-center">
                    <h4>
                        <a href="#" class="pro-title">
                            <?php echo $value["name"]; ?>
                        </a>
                    </h4>
                    <p class="price"><?php echo $value["price"]; ?></p>
                </div>
            </section>
        </div>
    <?php } ?>
</div>