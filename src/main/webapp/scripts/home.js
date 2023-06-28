$(function() {
    $(document).on('click', 'input[type="button"]', function(event) {
       var id = this.id;
		$.ajax({
			url : contextPath+'/eliminarProducto',
			data : {
				productoId : id
			},
			success : function() {
				location.reload();
			},
            error : function(){
				console.log("no envio");
            }
		});
    
    });

 
 $(document).on('click', 'input[type="checkbox"]', function(event) {
       var idProducto = this.id;
		$.ajax({
			url : contextPath+'/changeFlag',
			data : {
				idProducto : idProducto
			},
			success : function() {
				location.reload();
			},
            error : function(){
				console.log("no envio");
            }
		});
    
    });


});

