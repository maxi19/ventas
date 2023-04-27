<%@page import="com.ventas.entity.Marca"%>
<%@page import="com.ventas.entity.Producto"%>
   <%@page import="java.util.List"%>
   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 

<!DOCTYPE html>
  <html>
  <head>
	  <title>Ingreso de nuevo producto</title>
       <link rel="stylesheet" href="style/style.css">
      	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
 		<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
		<script src="scripts/scripts.js"></script>
	
	</head>

  
  <body>
  <div class="container" >
	    <header>
			<nav class="navbar navbar-dar bg-darkk">
			 <div class="container">
    			<a class="navbar-brand" href="#">Gestor de Stock</a>
  			 			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
  			     <li class="nav-item active">
       				 <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
    			  </li>
  			</ul>
  			</div>
			</nav>
	    </header>
	    
	     <section class="form-crear-producto">
			<form action="<%= request.getContextPath() %>/agregarProducto" method="Post" class="mt-4 mb-3">
			  <div class="form-group mb-3">
			    <label for="formGroupExampleInput">Nombre</label>
			    <input type="text" class="form-control" id="nombre" name = "nombre" placeholder="Nombre de producto">
			  </div>
			  
			  <div class="form-group mb-3">
			    <label for="formGroupExampleInput">Marca</label>
			    <div id ="marcas"></div>
			    <input type="hidden" name="marca-hidden" value="">
			  </div>
			  
			   <div class="form-group mb-3">
			    <label for="exampleFormControlSelect1">Tipo</label>
			    <div id ="categorias"></div>
			    <input type="hidden" name="categoria-hidden" value="">
			  </div>
			  
			   <div class="form-group mb-3">
			    <label for="formGroupExampleInput">Stock</label>
			    <input type="text" class="form-control" id="stock" name = "stock" placeholder="Stock inicial">
			  </div>
			  
			  <div class="form-group mb-2">
			    <label for="formGroupExampleInput">Precio</label>
			    <input type="text" class="form-control" id="precio" name = "precio" placeholder="Precio del producto">
			  </div>
			  
			  <div class="form-group mb-3">
			    <label for="formGroupExampleInput">imagen</label>
			    <input type="text" disabled = "true"  class="form-control" id="stock" name = "stock" placeholder="imagen">
			  </div>
			  
			  <div class="form-group">
			 	 <button type="submit" class="btn btn-primary">Ingresar producto</button>
			 </div>
			 
			</form>
	    </section>
	  </div>
  </body>
  </html>