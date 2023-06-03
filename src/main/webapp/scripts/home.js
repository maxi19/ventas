$(function() {
    $(document).on('click', 'input[type="button"]', function(event) {
       var id = this.id;

		$.ajax({
			url : '/eliminarProducto',
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
});