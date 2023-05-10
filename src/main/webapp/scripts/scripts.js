


$(document).ready(function(){
        $.ajax({
			url : '/marcas',
            method :'POST',
			success : function(responseText) {
            var dropdown = '<select class = "form-control" name="marca" >';
            $.each(responseText, function(index,value){
            dropdown+='<option value="'+value.id+'">'+value.marca+'</option>';
           });
           dropdown+='</select>';
           var container=$("#marcas");
           container.append(dropdown);
            }, error : function(error){
                console.log(error);
            }})
      

            $("#marcas").change(function () {
               
                $("#marca-hidden").val( $( "#marcas" ).val(0));

            });


            $.ajax({
                url : '/categorias',
                method :'POST',
                success : function(responseText) {
                var dropdown = '<select class = "form-control" name="categoria" >';
                $.each(responseText, function(index,value){
                dropdown+='<option value="'+value.id+'">'+value.nombre+'</option>';
               });
               dropdown+='</select>';
               var container=$("#categorias");
               container.append(dropdown);
                }, error : function(error){
                    console.log(error);
                }})
          
    
                $("#categorias").change(function () {
                   
                    $("#marca-hidden").val( $( "#categorias" ).val(0));
    
                });

    /*--------------------------VERIFICADOR DE IMAGEN---------------------------*/

	 var extensionesValidas = ".png, .gif, .jpeg, .jpg";
     var pesoPermitido = 10;
     var mensajes = [];
    // Cuando cambie #fichero
    $("#fichero").change(function () {

        $('#texto').text('');
	    $('#img').attr('src', '');

        //if(validarExtension(this)) {
        /*    if(validarPeso(this)) {
                if (validarTamaño(this)) {
                    verImagen(this);                    
                }

            }*/


            var myModal = new bootstrap.Modal(document.getElementById('#exampleModal'), {
                keyboard: false
            });

           // $(myModal).find('.modal-body p').text('You are about to remove this entry. Are you sure?');
            //$(myModal).find('.modal-header h5').html('Remove entry');
            //$(myModal).find('.modal-footer button').text('Remove');
			$(myModal).modal("show");
          

            try {
                var huboError = false;
                mensajes=[];
                validarExtension(this);
                validarPeso(this);
                validarTamanio(this);
                if (!huboError) {
                    throw new Error("Error al cargar el archivo");       
                }
                verImagen(this);                              
            } catch (error) {
                let mensajesAmostrar="" ;
                    
                for (let index = 0; index < mensajes.length; index++) {
                    let element = mensajes[index];
                    let p = "<p>";
                    element = p.concat(element);
                    element = element.concat("</p>");
                    mensajesAmostrar += element;
                }
                $('.modal-body').append(mensajesAmostrar);
                $("#exampleModal").modal("show");
                $('#img').removeAttr('src');
                mensajesAmostrar ="";
         


            }
        //}  
    });

    // Validacion de extensiones permitidas

 /*   function validarExtension(datos) {
        var ruta = datos.value;
        var extension = ruta.substring(ruta.lastIndexOf('.') + 1).toLowerCase();
        var extensionValida = extensionesValidas.indexOf(extension);

        if(extensionValida < 0) {
                $('#texto').text('La extensión no es válida Su fichero tiene de extensión: .'+ extension);
                return false;
            } else {
                return true;
            }
    }
    */

    function validarExtension(datos) {
        var ruta = datos.value;
        var extension = ruta.substring(ruta.lastIndexOf('.') + 1).toLowerCase();
        var extensionValida = extensionesValidas.indexOf(extension);

            if(extensionValida < 0) {
                mensajes.push("Extencion de imagen no valida");
                huboError = true;
            }                

    }



   /*Validacion de peso del fichero en kbs */
/*
    function validarPeso(datos) {

        if (datos.files && datos.files[0]) {

	    var pesoFichero = datos.files[0].size/1024;

	    if(pesoFichero > pesoPermitido) {	        
            $( "#mensaje" ).text("El archivo es demasiado grande");
            $("#exampleModal").modal("show");
            $('#img').removeAttr('src');
            return false;
	    } else {
	        return true;
	    }
	}
    }

    */

    function validarPeso(datos) {
            if (datos.files && datos.files[0]) {
                var pesoFichero = datos.files[0].size/1024;

                if(pesoFichero > pesoPermitido) {	        
                    mensajes.push("El peso de la imagen no es la permitida");
                    huboError = true;
                }
            }
    }

  // Vista preliminar de la imagen.
  function verImagen(datos) {

      if (datos.files && datos.files[0]) {

          var reader = new FileReader();
          reader.onload = function (e) {
	          $('#img').attr('src', e.target.result);
          };
          reader.readAsDataURL(datos.files[0]);
       }
   }

   function validarTamanio(datos){
        if (!this.width.toFixed(0) === 300 || !this.height.toFixed(0) === 300) {
            mensajes.push("Meididas de imagen correctas, tiene que ser de 200 alto x 400");
            huboError = true;
        }         
   }
    /*------------------------FIN---------------------------*/

    $("#btn-delete-modal-warning").click("show.bs.modal", function (event) {
        $(".modal-body").removeData('bs.modal');
    });
    /*------------------------seccion categoria---------------------------*/


    var selected = [];
    var availableTags = [
        "abc@gmail.com",
        "abc1@gmail.com",
        "abc2@gmail.com",
        "abc3@gmail.com",
        "abc4@gmail.com"
    ];

    $( function() {
        $("#tags").autocomplete({
          source: availableTags,
          select: function( event, ui){
            var value = ui.item.value;
            selected.push(value);
            refreshDiv();
            var i = availableTags.indexOf(value);
            availableTags.splice(i, 1);
            event.preventDefault();
            $("#tags").focusout();
            $("#tags").val('');
          }
        });
      });

      function refreshDiv(){
        $("#emails").val(selected.join(','));
          var email_html = selected.map(function(f, i){
            return "<span class='btn btn-info btn-sm' style='margin: 3px;'>"+f+"&nbsp;&nbsp; <span onclick=\"removeEmail('"+f+"')\" style='color:red'>x</span></span>";
        });
          $("#email-html").html(email_html);
      }
      
      function removeEmail(email){
        availableTags.push(email);
          var i = selected.indexOf(email);
          selected.splice(i, 1);
          refreshDiv();
      }


    })


