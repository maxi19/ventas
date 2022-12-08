$( function() {
			var availableTags = new Array();
			var showButton = false;
			
			$( "#tags" ).bind("keydown", function(event) {
				var req = { q: $("#tags").val()};
				availableTags.length = 0;
				$.ajax({
					url : "/buscar",
	                dataType : "json",
					data:{
						 q: req.q
							},
			        success: function( response ) {
			            console.log(response);
			            $.each(response,function(key,val){
			            	availableTags.push(val);
	                    });

			        },
			        error: function(error) {
			            console.log("hola con error");
					}
				})	
			});
			 
			$("#tags").autocomplete({
				source: function(request,response) {
					 var results;
				      var aData = $.map(availableTags, function(value, key) {
				        return {
				          label: value.nombre,
				          value: value.id
				        }
				      });
				      results = $.ui.autocomplete.filter(aData, request.term);
				      response(results);
				},
				minLength:1,
				select: function(event,ui){
					$( "#prodId" ).val(ui.item.value);
					$( this ).val(ui.item.label);
					 $("#btnAgregar").show();
					return false;
				}
			})
			
			
			$("#btnAgregar").click(function() {
				$("#selectable").append( "<p>"+ $( "#prodId" ).val()+"</p>" );
			})
			
			if ($('#selectable li').length == 0){
				  $("#btnAgregar").hide()
			}
});