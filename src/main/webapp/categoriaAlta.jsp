<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.ventas.entity.Producto"%>
<%@page import="com.ventas.entity.Tipo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Productos</title>
      	<!-- CSS only -->
      	<link rel="stylesheet" href="style/estilo11.css">
      	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <!-- js only -->
	 	<script src="scripts/jquery-3.6.0.js"></script>
 		<script src="scripts/jquery1.13.2-ui.js"></script>
 		<script src="scripts/customs.js"></script>
</head>
<body>
  	<%
  	List<Tipo> tipos = (List<Tipo>) request.getAttribute("tipos");
  	%>
<div class="container">   
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
 	<a class="navbar-brand" href="inicio.html">
 		<img src="media/logo.png" alt="logo" class="d-inline-block align-top">
    </a>
 	    <ul class="navbar-nav mr-auto mt-2 mt-lg-1">
	   	<% for (int i = 0; i < tipos.size(); i++) { %> 
	       <li class="nav-item">
	       		<a href="/<%=tipos.get(i).getNombre()%>" class="nav-link"><%=tipos.get(i).getValue()%></a>
	       </li>
	    <% } %>
	    </ul>
  </nav>
	
	
    <div class="container bg-black mt-2 mh-100" id="cuerpo" >
		 <div class="row" >
		 <div class="col-sm-5">
		  <div class="form-group">
		    <label for="exampleInputEmail1">Categoria</label>
		    <input type="text" class="form-control" id="caegoria-na,e" aria-describedby="nombre de categoria" placeholder="nombre de categoria">
		    <small id="emailHelp" class="form-text text-muted">nombre de categoria.</small>
		  </div>
		  <div class="ui-widget">
		  <div class="form-group mb-3">
		    <label for="productos">productos</label>
		    <input type="text" class="form-control" id="tags" aria-describedby="nombre de producto" placeholder="nombre de producto" value="D">
		  	<small id="emailHelp" class="form-text text-muted">nombre del producto.</small>
		 	<input id="prodId" name="prodId" type="hidden" value="">
		 
		  </div>
		</div>
		<div class="form-group">
		  <button  style="float: right;" class="btn btn-primary" id="btnAgregar" >Agregar categoria</button>		  
		</div>
		</div>
		<div class="col-sm-7">
				<ol id="selectable">

				</ol>
		</div>
		</div>
		
	

	</div>
    <div class="footer">   
      <div class="box">
	    <h2>AYUDA</h2>
	    <p>Si tenes sugerencias o comentarios</p>
	    <a href="conta.php"><button>contactos</button></a>
	   </div>
	   <div class="box" >
         <h2>REDES</h2>
         <a href="https://www.instagram.com/compragamer_oficial/"><img src="media/instagram.png" height="50" width="50" hspace="8"></a>
         <a href="https://twitter.com/CompraGamerOK"><img src="media/twitter.png" height="50" width="50" hspace="6"></a>
	   </div>
	   <div class="box" >
          <h2>INFORMACION</h2>
          <p>acerca de nosotros:</p>
          <a href="acerca.php"><button>acerca de:</button></a>
	   </div>
    </div>   
 	</div>
</body>
</html>