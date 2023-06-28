<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
     <%@page import="com.ventas.entity.Item"%>

<!DOCTYPE html>
  <html>
  <head>
	  <title>Discos:
      </title>
      <link rel="stylesheet" href="style/estilo12.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </head>
  <body id="body">
	<div class="container vh-100">
	<%@ include file="common/header.jsp" %> 
	
    
    
    
  <section id="productos">
  <div id="Compras">
  <center><h1>carrito de compras</h1>
   <hr>
		   <table class="table table-dark">
		  <thead class="thead-light">
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Nombre</th>
		      <th scope="col">Tipo</th>
		      <th scope="col">Cantidad</th>
		       <th scope="col">Precio</th>
		    </tr>
		  </thead>
		  <tbody>
		 <% List<Item> items = (List<Item>) misession.getAttribute("items");%>
		 <% for (int i = 0; i < items.size(); i++) { %>
		    <tr>
		      <th scope="row">1</th>
		      <td> <%= items.get(i).getProducto().getDescripcion()%></td>
		      <td>sin tipo</td>
		      <td><%= items.get(i).getCantidad() %> </td>
		      <td> <%= items.get(i).getProducto().getPrecio() %> </td>
		    </tr>
		    <%}%>
		   </tbody>
		   </table>	
	</center>
	
	<a class="btn btn-danger" href="<%= request.getContextPath() %>/preparacion-venta?method=listado" role="button">Confirmar compra</a>
	<a class="btn btn-primary" href="<%= request.getContextPath() %>/productos" role="button">Continuar agregando</a>		
  </div>
  </section>
  
  
  <%@ include file="common/footer.jsp" %> 
  </div>
  </body>
  </html>