<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.ventas.entity.Item"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmar venta</title>
<link rel="stylesheet" href="style/style.css">
      <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
<%
List<Item> items = (List<Item>) request.getAttribute("items");
boolean soloProducto = (boolean) request.getAttribute("soloProducto");

%>

	<section class="container-fluid mt-1">
		<%@ include file="common/header.jsp" %> 
	</section>
	
	<main class="container">
	
	<p>Confirmar Compra<p>

	<form action="<%= request.getContextPath() %>/finalizarVenta?" method="post">
		  <table class="table">
		   <thead>
				<tr>
				<th scope="col">Id</th>
				<th scope="col">Descripcion</th>
				<th scope="col">Precio Unitario</th>
				<th scope="col">Cantidad</th>
				<th scope="col">Subtotal</th>
				</tr>
			</thead>
		<tbody>
		<% for (int i = 0; i < items.size(); i++) { %>
		<tr>
			<th scope="row"><%=items.get(i).getProducto().getId() %></th>
			<td><%=items.get(i).getProducto().getNombre() %></td>
			<td><%=items.get(i).getProducto().getPrecio() %></td>
			<td><%=items.get(i).getCantidad() %></td>
			<td><%=items.get(i).getTotal() %></td>
		</tr>
		<%} %>
	</tbody>
	</table>
	

	<h3>Datos de entrega:</h3>
	
	<label>Nombre y apellido </label> <input type="text" name="nombre" value="" >
	<label>Direccion </label> <input type="text" name="direccion" value="" >
	
	    <br></br>
	    <select name="pago"  required>
	      <option  value="">seleccione metodo de pago</option>
	      <option id = "1" value="1">credito</option>
	      <option id = "2" value="2">debito</option>
	       <option id = "3" value="3">efectivo</option>
	    </select>
	      <%if(soloProducto){ %>
	    	<h3>Cantidad:</h3>
			    <select name="cantidad"  required>
			      <option  value="">seleccione cantidad</option>
			      <option  id = "1" value="1">1</option>
			      <option id = "2" value="2">2</option>
			       <option id = "3" value="3">3</option>
			    </select>
	      <%} %>
	    <button>Confirmar compra</button>
	 </form>
	</main>
 	<section>
		<%@ include file="common/footer.jsp" %> 
	</section>
</body>
</html>