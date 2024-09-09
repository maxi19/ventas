$(function() {

	$(document).ready(function(){
	    $.ajax(
			{ url: contextPath + '/ventas',
	        	 dataType: 'JSON',
	        	success: function(data){
					populateTable(data);
	        	}
	    });
			
	});
	
	function populateTable(data){
				
			$("#tableOrderDetail tbody").find("tr:gt(0)").remove(); 

			$.each(data, function(i, v) {

			  if (i == 0) {
			    setDataOnRow($("#tableOrderDetail tbody").find("tr").first(), v);

			  } else {

			    //clonning the first row and setting data over it and then appending in tbody
			    var clonnedRow = $($("#tableOrderDetail tbody").find("tr").first()).clone();
			    this.setDataOnRow(clonnedRow, v);

			    $("#tableOrderDetail tbody").append(clonnedRow);

			  }
			});
				
		};
		
		function setDataOnRow(rowObject, v) {
		  var identificador = v.identificador;
		  var fecha = v.fecha;
		  var direccion = v.direccion;
		  var estado = v.estado;
		  var telefono = v.telefono;
		  var monto = v.monto;
		  
		  $(rowObject).find(".identificador").html(identificador);
		  $(rowObject).find(".fecha").html(fecha);
		  $(rowObject).find(".direccion").html(direccion);
		  $(rowObject).find(".estado").html(estado);
		  $(rowObject).find(".telefono").html(telefono);
		  $(rowObject).find(".monto").html(monto);
		  $(rowObject).find(".detalles").append( 
			$('<input/>').attr({
			                type: "button",
							class :"btn btn-primary",
			                value: "Ver mas",
			                onclick: ""
			            })
		    );
		}

	
})