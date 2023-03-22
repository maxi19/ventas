<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
	<%@page import="com.ventas.entity.Producto"%>
<!DOCTYPE html>
  <html>
  <head>
	  <title>Discos:
      </title>
       <link rel="stylesheet" href="style/estilo2.css">
      	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </head>
  <body>
  <div class="container mt-2" >
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
	    
	     <section id="inicio">
			<form action="<%= request.getContextPath() %>/agregar" method="Post" class="mt-4 mb-3">
			  <div class="form-group">
			    <label for="formGroupExampleInput">Nombre</label>
			    <input type="text" class="form-control" id="nombre" name = "nombre" placeholder="Nombre de producto">
			  </div>
			  
			  <div class="form-group">
			    <label for="formGroupExampleInput">Marca</label>
			    <input type="text" class="form-control" id="marca" name = "marca" placeholder="Marca del producto">
			  </div>
			  
			   <div class="form-group">
			    <label for="exampleFormControlSelect1">Tipo</label>
			    <select class="form-control" id="tipo" name="tipo">
			      <option>1</option>
			      <option>2</option>
			      <option>3</option>
			      <option>4</option>
			      <option>5</option>
			    </select>
			  </div>
			  
			   <div class="form-group">
			    <label for="formGroupExampleInput">Stock</label>
			    <input type="text" class="form-control" id="stock" name = "stock" placeholder="Stock inicial">
			  </div>
			  
			  <div class="form-group">
			    <label for="formGroupExampleInput">Precio</label>
			    <input type="text" class="form-control" id="precio" name = "precio" placeholder="Precio del producto">
			  </div>
			  
			  <div class="form-group">
			 	 <button type="submit" class="btn btn-primary">Ingresar producto</button>
			 </div>
			 
			</form>
	    </section> 
	    <footer>
	    <div id="ayuda">
	            <h2>AYUDA</h2>
	            <p>Si tenes sugerencias o comentarios</p>
	            <a href="#"><button>contactos</button></a>
	            </div>
	            <div id="conct">
	              <center>
	              <h2>REDES</h2>
	              <a href="https://www.instagram.com/compragamer_oficial/"><img src="media/instagram.png" height="50" width="50" hspace="8"></a>
	              <a href="https://twitter.com/CompraGamerOK"><img src="media/twitter.png" height="50" width="50" hspace="6"></a>
	                  </center>
	              </div>
	            <div id="ayuda2">
	              <h2>INFORMACION</h2>
	              <p>acerca de nosotros:</p>
	              <a href="#"><button>acerca de:</button></a>
	              </div>
	    </footer>
	    <div id="miModal" class="modal">
			<div class="modal-contenido">
	        <a href="#"><button>X</button></a>
	        <h1>CARACTERISTICAS GENERALES</h1>
	  <hr>      
	<ul>Tipo De Conexión SATA</ul>
	<ul>Consumo 30 w</ul>
	<ul>Tipo De Disco
	Mecánico</ul></hr>
	<h1>RENDIMIENTO</h1>
	<hr><ul>Memoria Cache
	64 mb</ul>
	<ul>Velocidad De Rotación
	7200 rpm</ul>
	<ul>Velocidad De Interface
	6.0</ul>
	<ul>Capacidad
	1000 gb</ul></hr>
			</div>
	</div>
	<div id="miModal2" class="modal">
			<div class="modal-contenido2">
	        <a href="#"><button>X</button></a>
	        <h1>CARACTERISTICAS GENERALES</h1>
	  <hr>      
	<ul>Tipo De Conexión SATA</ul>
	<ul>Consumo 8 w</ul>
	<ul>Tipo De Disco
	Mecánico</ul></hr>
	<h1>RENDIMIENTO</h1>
	<hr><ul>Memoria Cache
	256 mb</ul>
	<ul>Velocidad De Rotación
	7200 rpm</ul>
	<ul>Velocidad De Interface
	6.0</ul>
	<ul>Capacidad
	8000 gb</ul></hr>
			</div>
	</div>
	<div id="miModal3" class="modal">
			<div class="modal-contenido3">
	        <a href="#"><button>X</button></a>
	        <h1>CARACTERISTICAS GENERALES</h1>
	  <hr>      
	<ul>Tipo De Conexión SATA</ul>
	<ul>Consumo 7 w</ul>
	<ul>Tipo De Disco
	Mecánico</ul></hr>
	<h1>RENDIMIENTO</h1>
	<hr><ul>Memoria Cache
	64 mb</ul>
	<ul>Velocidad De Rotación
	5400 rpm</ul>
	<ul>Velocidad De Interface
	6.0</ul>
	<ul>Capacidad
	3000 gb</ul></hr>
			</div>
			</div>
	</div>
	<div id="miModal4" class="modal">
			<div class="modal-contenido4">
	        <a href="#"><button>X</button></a>
	        <h1>CARACTERISTICAS GENERALES</h1>
	  <hr>      
	<ul>Tipo De Conexión SATA</ul>
	<ul>Consumo 3 w</ul>
	<ul>Tipo De Disco
	Solido</ul></hr>
	<h1>RENDIMIENTO</h1>
	<hr><ul>Memoria Cache
	128 mb</ul>
	<ul>Velocidad De Rotación
	00 rpm</ul>
	<ul>Velocidad De Interface
	0.0</ul>
	<ul>Capacidad
	200 tb</ul>
	<ul>Vel Lectura Secuencial
	520 mb/s</ul>
	<ul>el Escritura Secuencial
	470 mb/s</ul>
	<ul>Terabytes Written
	200 tb</ul>
	<ul>Capacidad
	240 gb</ul></hr>
			</div>
	</div>
	<div id="miModal5" class="modal">
			<div class="modal-contenido5">
	        <a href="#"><button>X</button></a>
	        <h1>CARACTERISTICAS GENERALES</h1>
	  <hr>      
	  <ul>Tipo De Conexión SATA</ul>
	<ul>Consumo 3 w</ul>
	<ul>Tipo De Disco
	Solido</ul></hr>
	<h1>RENDIMIENTO</h1>
	<hr><ul>Memoria Cache
	128 mb</ul>
	<ul>Velocidad De Rotación
	00 rpm</ul>
	<ul>Velocidad De Interface
	0.0</ul>
	<ul>Vel Lectura Secuencial
	550 mb/s</ul>
	<ul>el Escritura Secuencial
	500 mb/s</ul>
	<ul>Terabytes Written
	800 tb</ul>
	<ul>Capacidad
	1000 gb</ul></hr>
			</div>
	</div>
	<div id="miModal6" class="modal">
			<div class="modal-contenido6">
	        <a href="#"><button>X</button></a>
	        <h1>CARACTERISTICAS GENERALES</h1>
	  <hr>      
	<ul>Tipo De Conexión SATA</ul>
	<ul>Consumo 4 w</ul>
	<ul>Tipo De Disco
	Solido</ul></hr>
	<h1>RENDIMIENTO</h1>
	<hr><ul>Memoria Cache
	128 mb</ul>
	<ul>Velocidad De Rotación
	00 rpm</ul>
	<ul>Velocidad De Interface
	0.0</ul>
	<ul>Vel Lectura Secuencial
	550 mb/s</ul>
	<ul>el Escritura Secuencial
	500 mb/s</ul>
	<ul>Vel Lectura Random
	220000 iops</ul>
	<ul>Vel Escritura Random
	200000 iops</ul>
	<ul>Terabytes Written
	1000 tb</ul>
	<ul>Capacidad
	1000 gb</ul></hr>
			</div>
	</div>
	<div id="miModal7" class="modal">
			<div class="modal-contenido7">
	        <a href="#"><button>X</button></a>
	        <hr>
	        <h1>CARACTERISTICAS GENERALES</h1>
	        <ul>Tipo De Conexión SATA</ul>
	<ul>Consumo 2 w</ul>
	<ul>Tipo De Disco
	Solido</ul></hr>
	<h1>RENDIMIENTO</h1>
	<hr><ul>Memoria Cache
	0 mb</ul>
	<ul>Velocidad De Rotación
	00 rpm</ul>
	<ul>Velocidad De Interface
	0.0</ul>
	<ul>Vel Lectura Secuencial
	460 mb/s</ul>
	<ul>el Escritura Secuencial
	360 mb/s</ul>
	<ul>Terabytes Written
	40 tb</ul>
	<ul>Capacidad
	120 gb</ul></hr>
			</div>
	</div>
	<div id="miModal8" class="modal">
			<div class="modal-contenido8">
	        <a href="#"><button>X</button></a>
	        <h1>CARACTERISTICAS GENERALES</h1>
	  <hr>      
	<ul>Tipo De Conexión SATA</ul>
	<ul>Consumo 2 w</ul>
	<ul>Tipo De Disco
	Solido</ul></hr>
	<h1>RENDIMIENTO</h1>
	<hr><ul>Memoria Cache
	0 mb</ul>
	<ul>Velocidad De Rotación
	00 rpm</ul>
	<ul>Velocidad De Interface
	0.0</ul>
	<ul>Vel Lectura Secuencial
	530 mb/s</ul>
	<ul>el Escritura Secuencial
	400 mb/s</ul>
	<ul>Vel Lectura Random
	28000 iops</ul>
	<ul>Vel Escritura Random
	51000 iops</ul>
	<ul>Terabytes Written
	80 tb</ul>
	<ul>Capacidad
	240 gb</ul></hr>
			</div>
	</div>
	<div id="miModal9" class="modal">
			<div class="modal-contenido9">
	        <a href="#"><button>X</button></a>
	        <h1>CARACTERISTICAS GENERALES</h1>
	  <hr>      
	<ul>Tipo De Conexión SATA</ul>
	<ul>Consumo 6 w</ul>
	<ul>Tipo De Disco
	Solido</ul></hr>
	<h1>RENDIMIENTO</h1>
	<hr><ul>Memoria Cache
	128 mb</ul>
	<ul>Velocidad De Rotación
	00 rpm</ul>
	<ul>Velocidad De Interface
	0.0</ul>
	<ul>Vel Lectura Secuencial
	5600 mb/s</ul>
	<ul>Vel Escritura Secuencial
	4300 mb/s</ul>
	<ul>Capacidad
	1000 gb</ul></hr>
			</div>
	</div>
</div>
  </body>
  </html>