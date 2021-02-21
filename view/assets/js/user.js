$(document).ready(function(){
    $("#password2").keyup(function() {
        if ($("#password").val() != $("#password2").val()) {
          $(".nosamepass").fadeIn('slow');
          $(".form-signin > input[type='password']").css("border", "5px solid #ff0033");
          $(".btn-submit").prop("disabled", true);
        } else {
          $(".nosamepass").fadeOut('slow');
          $(".form-signin > input[type='password']").css("border", "5px solid #232323");
          $(".btn-submit").removeAttr('disabled');
        }
    });
});