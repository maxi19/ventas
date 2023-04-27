


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




    })