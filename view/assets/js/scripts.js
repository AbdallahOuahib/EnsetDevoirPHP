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
        html += '<input type="number" classe="qte-cart" name="qte" min="1" max="10" value="1" data-price="'+price+'" data-ref="'+ref+'">';
        html += '</span>';
        html += '<label class="item-removal text-danger" data-priceremove="'+price+'" data-qteremove="1" data-refremove="'+ref+'">Remove</label>';
        html += '</li>';

        $(".shopping-cart-items").append(html);
        $(".badge-items").html(nbrItems);

        totalPrices += Number(price);
        $(".main-color-text").html(totalPrices.toFixed(2));

        setHiddenInput(ref,1);
    });

    $('body').on("change",":input[type='number']", function () { 
        var direction = this.defaultValue < this.value
        this.defaultValue = this.value;
        var ref = $(this).attr('data-ref');
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

            removeValue(ref);
            setHiddenInput(ref,item);

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

            removeValue(ref);
            setHiddenInput(ref,item);
        }
        
    });

    $("body").on('click','.item-removal',function(){
        $(this).parent('.item').remove();

        var price = $(this).attr('data-priceremove');
        var item = $(this).attr('data-qteremove');
        var ref = $(this).attr('data-refremove');

        totalPrices -= Number(price);
        nbrItems -= Number(item);

        $(".total-price").html(totalPrices.toFixed(2));
        $(".badge-items").html(nbrItems);

        removeValue(ref);
    });


});

var hiddenValuesArray = [];
function setHiddenInput(ref,qte)
{
    var obj = {
        "ref":ref,
        "qte":qte
    }
    
    hiddenValuesArray.push(JSON.stringify(obj));
    $("#hiddenRefProd").val(hiddenValuesArray);
}

function removeValue(ref){
    //remove from input hidden

    // var obj = {
    //     "ref":ref,
    //     "qte":qte
    // }
    var getValuesOfObject = Object.values(hiddenValuesArray);
    for(var i=0;i<getValuesOfObject.length;i++){
        if (getValuesOfObject[i].includes(ref)) {
            //console.log(getValuesOfObject[i]);
            hiddenValuesArray.splice(i, 1);
        }
    }

    $("#hiddenRefProd").val(hiddenValuesArray);
}