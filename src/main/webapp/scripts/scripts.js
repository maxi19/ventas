
var loadMarcas = {
    cargar: function(){
        $.ajax({
			url : contextPath +'/marcas',
            method :'POST',
			success : function(responseText) {
            var dropdown = '<select class = "form-control" name="marca" id="marca-cbo">';
            $.each(responseText, function(index,value){
            dropdown+='<option value="'+value.id+'">'+value.nombre+'</option>';
           });
           dropdown+='</select>';
           var container=$("#marcas");
           container.append(dropdown);
            }, error : function(error){
                console.log(error);
            }})      
    },
    cargarSeleccion : function () {
        $("#marcas").change(function () {
             $("#marca-hidden").val( $( "#marca-cbo" ).val());
          });
    }
}



var loadCategorias = {
    cargar:function(){
        $.ajax({
            url : contextPath+'/categorias',
            method :'POST',
            success : function(responseText) {
            var dropdown = '<select class = "form-control" name="categoria" id="categoria-cbo" >';
            $.each(responseText, function(index,value){
                if(value.id =="8"){
                    dropdown+='<option value="'+value.id+'" selected>'+value.nombre+'</option>';
                }else{
                    dropdown+='<option value="'+value.id+'">'+value.nombre+'</option>';
                }
           });

           dropdown+='</select>';
           var container=$("#categorias");
           container.append(dropdown);
            }, error : function(error){
                console.log(error);
            }})

        },
    cargarSeleccionCategorias : function () {
            var categoriaSelected;
            $("#categorias").change(function () {
             $("#categoria-hidden").val( $( "#categoria-cbo" ).val());
        });
    }


}

var producto = {
    validaciones : function () {
        $("#productoForm").validate({
            errorClass: "my-error-class",
               validClass: "my-valid-class",
            rules:{
                titulo:{
                    required: true,
                    minlength: 10,
                    maxlength: 40
                },
                nombre:{
                    required: true,
                    minlength: 10,
                    maxlength: 40
                },
                stock:{
                    required: true,
                    number: true 
                },
                precio:{
                    required: true,
                    number: true 
                },
                descripcion:{
                    required: false,
                    maxlength: 150
                }
            },
            messages:{
                titulo:{
                    required :"Por favor ingrese un Titulo",
                    minlength : "Titulo como minimo 10 caracteres",
                    maxlength :"Titulo como maximo 40 caracteres"
                },
                nombre:{
                    required :"Por favor ingrese un Titulo",
                    minlength : "El nombre como minimo 10 caracteres",
                    maxlength :"El nombre como maximo 40 caracteres"
                } ,
                stock: {
                    required : "Por favor ingrese un valor numerico",
                    number : "Debe ser valor solo numerico"
                },
                precio: {
                    required : "Por favor ingrese un valor numerico",
                    number : "Debe ser valor solo numerico"
                },
                descripcion :{
                    maxlength :"La descripcion debe ser como maximo 150 caracteres"
                }
            }	
        });
    },

    crearProducto :  function () {
        $('input').on('blur', function() {
            if ($("#productoForm").valid()) {
                    $('#crearProductoBtn').prop('disabled', false);  
                } else {
                    $('#crearProductoBtn').prop('disabled', 'disabled');
                }
            });
    
    
    
            
        $('#crearProductoBtn').on('click', function () {
           var titulo = $('#titulo').val();
           var nombre = $('#nombre').val();
           var marca = $('#marca-hidden').val();
           var categoria = $('#categoria-hidden').val();
           var stock = $('#stock').val();
           var precio = $('#precio').val();
    
           event.preventDefault();
    
            $.ajax({
                url : contextPath+'/agregarProducto',
                
                dataTyoe:'JSON',
                data : {
                    titulo : titulo,
                    nombre : nombre,
                    marca : marca, 
                    categoria : categoria,
                    stock : stock,
                    precio : precio
                },
                success : function() {
                    window.location.href= contextPath+"/home";
                },
                error : function(){
                    console.log("no envio");
                }
            });
        
        });
    }
}



$(document).ready(function (){
    loadMarcas.cargar();
    loadMarcas.cargarSeleccion();
    loadCategorias.cargar();
    loadCategorias.cargarSeleccionCategorias();
    producto.validaciones();
    producto.crearProducto();

});



