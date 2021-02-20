$(document).ready(function(){

    var nbrItems = 0;
    var totalPrices=0;

    $("#cart").on("click", function() {
        $(".shopping-cart").fadeToggle( "fast");
    });


    $("body").on('click','.adtocart',function(e){
        e.preventDefault();
        nbrItems++;
        $(this).css('display','none');

        var ref = $(this).attr('data-ref');
        var price = $(this).attr('data-price');
        var name = $(this).attr('data-name');
        var img = $(this).attr('data-img');

        var html = '<li class="clearfix item" data-ref="'+ref+'"><img class="img-miniature" src="'+img+'" alt="'+name+'" />';
        html += '<span class="item-name">'+name+'</span>';
        html += '<span class="item-price">'+price+'</span>';
        html += '<span class="item-quantity">Quantity:'; 
        html += '<input type="number" classe="qte-cart" name="qte" min="1" max="10" value="1" data-price="'+price+'">';
        html += '</span>';
        html += '<label class="item-removal text-danger" data-priceremove="'+price+'" data-qteremove="1">Remove</label>';
        html += '</li>';

        $(".shopping-cart-items").append(html);
        $(".badge-items").html(nbrItems);

        totalPrices += Number(price);
        $(".main-color-text").html(totalPrices.toFixed(2));
    });

    $('body').on("change",":input[type='number']", function () { 
        var direction = this.defaultValue < this.value
        this.defaultValue = this.value;
        var priceNumber = Number($(this).closest('.item-quantity').next('.item-removal').attr('data-priceremove'));
        var item = Number($(this).closest('.item-quantity').next('.item-removal').attr('data-qteremove'));
        if( direction ){
            nbrItems++;
            item++;
            var price = $(this).attr('data-price');
            totalPrices += Number(price);
            $(".total-price").html(totalPrices.toFixed(2));
            $(".badge-items").html(nbrItems);

            priceNumber += Number(price);
            $(this).closest('.item-quantity').next('.item-removal').attr('data-priceremove',priceNumber.toFixed(2));
            $(this).closest('.item-quantity').next('.item-removal').attr('data-qteremove',item);
        }else{
            nbrItems--;
            item--;
            var price = $(this).attr('data-price');
            totalPrices -= Number(price);
            $(".total-price").html(totalPrices.toFixed(2));
            $(".badge-items").html(nbrItems);

            priceNumber -= Number(price);
            $(this).closest('.item-quantity').next('.item-removal').attr('data-priceremove',priceNumber.toFixed(2));
            $(this).closest('.item-quantity').next('.item-removal').attr('data-qteremove',item);
        }
        
    });

    $("body").on('click','.item-removal',function(){
        $(this).parent('.item').remove();

        var price = $(this).attr('data-priceremove');
        var item = $(this).attr('data-qteremove');

        totalPrices -= Number(price);
        nbrItems -= Number(item);

        $(".total-price").html(totalPrices.toFixed(2));
        $(".badge-items").html(nbrItems);
    });


});