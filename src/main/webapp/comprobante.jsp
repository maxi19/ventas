<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
	<%@page import="com.ventas.entity.Producto"%>
	<%@page import="com.ventas.entity.Item"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Comprobante de compra</title>
</head>
<body>

<%
List<Item> items = (List<Item>) request.getAttribute("items");
int totalFactura = (int) request.getAttribute("totalfactura");

%>

<div class="container mt-4">

<center><h2>Comprobante de compra</h2></center>

	<div>
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
		      <td><%=items.get(i).getProducto().getDescripcion() %></td>
		      <td><%=items.get(i).getProducto().getPrecio() %></td>
		      <td><%=items.get(i).getCantidad() %></td>
		      <td><%=items.get(i).getTotal() %></td>
		    </tr>
		    <%} %>
		    </tbody>
	    </table>
		
		<h3>Total de venta:</h3>
	
		<label>importe </label> <input type="text" name="importe" value="<%=totalFactura%>" disabled>
	
 </div>
 
 <a class="btn btn-danger" href="/productos" role="button">Ir a inicio</a>
 

</body>
</html>