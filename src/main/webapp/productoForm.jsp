<%@page import="com.ventas.entity.Marca"%>
<%@page import="com.ventas.entity.Producto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 

<!DOCTYPE html>
  <html>
  <head>
	  <title>Ingreso de nuevo producto</title>
        <link rel="stylesheet" href="style/style.css">
 		<script src="scripts/jquery/jquery-3.6.4.min.js" ></script>
		<script src="scripts/bootstrap/js/bootstrap.bundle.min.js" ></script>
		<script src="scripts/bootstrap/js/bootstrap.bundle.min.js.map" ></script>
		<script src="scripts/bootstrap/js/browser-polyfill.min.js.map" ></script>
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
  				<label for="formFile" class="form-label">imagen</label>
  				<input class="form-control" type="file" id="fichero">
			  </div>

			<div class="alert alert-danger alert-dismissible fade hide" role="alert">
				<p>hola mundo</p>
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>  
			</div>
			  
			  <div class="form-group mb-3">
  				<img id="img" src="" />
			  </div>	  	
				
			  <div class="form-group mb-3">
			  	 <label class="form-label" id ="texto"></label>
			 	 <button type="submit" class="btn btn-primary">Ingresar producto</button>
			 </div>
			 

			 
			 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  				Launch demo modal
			</button>

				<link rel="stylesheet" href="scripts/bootstrap/css/bootstrap.css.map">
				<link rel="stylesheet" href="scripts/bootstrap/css/bootstrap.min.css">



			 
			</form>
	    </section>
	  </div>
	  
	  <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" data-mdb-keyboard="false" data-mdb-backdrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="modal-cuerpo">
		<p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" 
		 data-bs-toggle="modal" 
		 data-bs-target="#exampleModal" 
		 data-dismiss="modal" 
		 id="btn-delete-modal-warning">Close</button>
      </div>
    </div>
  </div>
</div>
	
	  
  </body>
  </html>