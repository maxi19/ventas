<%@page import="com.ventas.entity.Marca"%>
<%@page import="com.ventas.entity.Producto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
  <html>
  <head>
	  <title>Ingreso de nuevo producto</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/style/style.css">
 		<script src="<%=request.getContextPath()%>/scripts/jquery/jquery-3.6.4.min.js" ></script>
		<script src="<%=request.getContextPath()%>/scripts/bootstrap/js/bootstrap.bundle.min.js" ></script>
		<script src="<%=request.getContextPath()%>/scripts/bootstrap/js/bootstrap.bundle.min.js.map" ></script>
		<script src="<%=request.getContextPath()%>/scripts/bootstrap/js/browser-polyfill.min.js.map" ></script>
		<script src="<%=request.getContextPath()%>/scripts/scripts.js"></script>
		<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	   	<script type="text/javascript">
			var contextPath="<%=request.getContextPath()%>";
		</script>
	</head>
  <body>

	<section class="container-fluid mt-1">
		<%@ include file="common/header.jsp" %> 
	</section>

  <main class="container" >
	    
	     <section class="form-crear-producto">
			<form id="productoForm" class="mt-4 mb-3">
			  
			  <div class="form-group mb-3">
			    <label for="formGroupExampleInput">Titulo</label>
			    <input type="text" class="form-control" id="titulo" name = "titulo" placeholder="Titulo en grilla de venta">
			  </div>
			  
			  <div class="form-group mb-3">
			    <label for="formGroupExampleInput">Nombre</label>
			    <input type="text" class="form-control" id="nombre" name = "nombre" placeholder="Nombre de producto">
			  </div>
			  
			  <div class="form-group mb-3">
			    <label for="formGroupExampleInput">Marca</label>
			    <div id ="marcas"></div>
			    <input type="hidden" name="marca-hidden" id="marca-hidden" value>
			  </div>
			  
			   <div class="form-group mb-3">
			    <label for="exampleFormControlSelect1">Categoria</label>
			    <div id ="categorias"></div>
			    <input type="hidden" name="categoria-hidden" id="categoria-hidden" value >
			  </div>
			  
			   <div class="form-group mb-3">
			    <label for="formGroupExampleInput">Stock</label>
			    <input type="text" class="form-control" id="stock" name = "stock" placeholder="Stock inicial">
			  </div>
			  
			  <div class="form-group mb-2">
			    <label for="formGroupExampleInput">Precio</label>
			    <input type="text" class="form-control" id="precio" name = "precio" placeholder="Precio del producto">
			  </div>

			  <div class="form-group mb-2">
			    <label for="floatingTextarea">Descripcion del producto</label>
  				<textarea class="form-control" placeholder="brebe descripcion del producto" id="descripcion" name = "descripcion"></textarea>
			  </div>

			  <div class="form-group mb-3">
  				<label for="formFile" class="form-label">imagen</label>
  				<input class="form-control" type="file" id="fichero">
			  </div>

			<div class="alert alert-danger alert-dismissible fade hide" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>  
			</div>
			  
			  <div class="form-group mb-3">
  				<img id="img" src="" />
			  </div>	  	
				
			  <div class="form-group mb-3">
			  	 <label class="form-label" id ="texto"></label>
			 	 <button type="button" class="btn btn-primary"  id="crearProductoBtn" >Ingresar producto</button>
			 </div>
		 
				<link rel="stylesheet" href="scripts/bootstrap/css/bootstrap.css.map">
				<link rel="stylesheet" href="scripts/bootstrap/css/bootstrap.min.css">
			</form>
	    </section>
	</main>
	 
	<section>
		<%@ include file="common/footer.jsp" %> 
	</section>

  
  </body>
  </html>