<?php include_once "view/header.php"; ?>
<body class="body">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
<div class="container bootdey">
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
        <section class="panel">
            <header class="panel-heading">
                Price Range
            </header>
            <div class="panel-body sliders">
                <div id="slider-range" class="slider"></div>
                <div class="slider-info">
                    <span id="slider-range-amount"></span>
                </div>
            </div>
        </section>
        <section class="panel">
            <header class="panel-heading">
                Filter
            </header>
            <div class="panel-body">
                <form role="form product-form">
                    <div class="form-group">
                        <label>Brand</label>
                        <select class="form-control hasCustomSelect" style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                            <option>Wallmart</option>
                            <option>Catseye</option>
                            <option>Moonsoon</option>
                            <option>Textmart</option>
                        </select>
                        <span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner" style="width: 209px; display: inline-block;">Wallmart</span></span>
                    </div>
                    <div class="form-group">
                        <label>Color</label>
                        <select class="form-control hasCustomSelect" style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                            <option>White</option>
                            <option>Black</option>
                            <option>Red</option>
                            <option>Green</option>
                        </select>
                        <span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner" style="width: 209px; display: inline-block;">White</span></span>
                    </div>
                    <div class="form-group">
                        <label>Type</label>
                        <select class="form-control hasCustomSelect" style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                            <option>Small</option>
                            <option>Medium</option>
                            <option>Large</option>
                            <option>Extra Large</option>
                        </select>
                        <span class="customSelect form-control" style="display: inline-block;"><span class="customSelectInner" style="width: 209px; display: inline-block;">Small</span></span>
                    </div>
                    <button class="btn btn-primary" type="submit">Filter</button>
                </form>
            </div>
        </section>
        <section class="panel">
            <header class="panel-heading">
                Best Seller
            </header>
            <div class="panel-body">
                <div class="best-seller">
                    <article class="media">
                        <a class="pull-left thumb p-thumb">
                            <img src="https://via.placeholder.com/250x220/FFB6C1/000000" />
                        </a>
                        <div class="media-body">
                            <a href="#" class="p-head">Item One Tittle</a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </article>
                    <article class="media">
                        <a class="pull-left thumb p-thumb">
                            <img src="https://via.placeholder.com/250x220/A2BE2/000000" />
                        </a>
                        <div class="media-body">
                            <a href="#" class="p-head">Item Two Tittle</a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </article>
                    <article class="media">
                        <a class="pull-left thumb p-thumb">
                            <img src="https://via.placeholder.com/250x220/6495ED/000000" />
                        </a>
                        <div class="media-body">
                            <a href="#" class="p-head">Item Three Tittle</a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </article>
                </div>
            </div>
        </section>
    </div>
    <div class="col-md-9">
        <?php include_once "view/pagination.php"; ?>
        <?php include_once "view/list-products.php"; ?>
    </div>
</div>

<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</body>
</html>