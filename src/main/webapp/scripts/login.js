$(function() {
   
$("#btn-login").click(function (e) {

// Show full page LoadingOverlay
$.LoadingOverlay("show",{
    text        : "Cargando..."
});

// Hide it after 3 seconds
setTimeout(function(){
    $.LoadingOverlay("hide");
}, 2500);

    e.preventDefault(); 
     var usuario =$("#email").val();
     var password =$("#password").val();
     var mensaje="";
        $.ajax({
            url: '/loginV2',
            dataType: 'JSON',
            success: function(data){
                if (data[0].estatus == "error") {
                    mensaje = data[0].msg;
                    $('#grupo-passowrd').append("<div class='alert alert-primary' role='alert'> "+mensaje+" </div>");                    
                } else {
                   window.location.href="/home";
                }
            },
            data: {
                user : usuario,
                password : password
            },
            cache: false,
            type: 'POST'
          });

    }
);




});