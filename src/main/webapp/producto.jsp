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
	  <title>producto:</title>
      <link rel="stylesheet" href="style/estilo11.css">
      <!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
		<!-- JavaScript Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
      	<%
      	List<Tipo> tipos = (List<Tipo>) request.getAttribute("tipos");
      	List<Producto> productos = (List<Producto>) request.getAttribute("productos");
      	Map<String,List<Producto>> mapa = (HashMap<String,  List<Producto> >) request.getAttribute("mapa");
      	int contador = 0; 
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
  <section id="inicio">
    <div class="container">
    	<% for (Map.Entry<String, List<Producto>> entry : mapa.entrySet()) { %>
    		     <h2><%=entry.getKey()%></h2>
    		    <div class ="col-sm col-xs-12">
    		  
    		   <div class="row">
    		<%for(Producto producto : entry.getValue()  ){ %>
    		 	  <div class="card" style="width: 18rem;">
    		 	  <div class="card-header">
    		 	  	<img class="card-img-top" src="media/proddisco.jpg" alt="Card image cap">
    		 	  </div>
				  <div class="card-body">
				    <h5 class="card-title">$ <%=producto.getPrecio()%></h5>
				    <p class="card-text"><%=producto.getDescripcion()%></p>
				    <a href="#" class="btn btn-primary">Go somewhere</a>
				    <a href="#" class="btn btn-warning">Go somewhere</a>
				  </div>
				</div>
    	    <% } %>
    	      </div>
    	     </div>
    	    <br>
    	<% } %>
    </div>
   </section>
    <div class="footer">
    <div class = "container">
    <div class ="row">
      <div>
	    <h2>AYUDA</h2>
	    <p>Si tenes sugerencias o comentarios</p>
	    <a href="conta.php"><button>contactos</button></a>
	    </div>
	    <div >
	              <center>
	              <h2>REDES</h2>
	              <a href="https://www.instagram.com/compragamer_oficial/"><img src="media/instagram.png" height="50" width="50" hspace="8"></a>
	              <a href="https://twitter.com/CompraGamerOK"><img src="media/twitter.png" height="50" width="50" hspace="6"></a>
	          </center>
	                  </div>
	            <div >
	              <h2>INFORMACION</h2>
	              <p>acerca de nosotros:</p>
	              <a href="acerca.php"><button>acerca de:</button></a>
	              </div>
    </div>
    </div>
     </div>
 	</div>
</body>
</html>