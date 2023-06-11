<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>

<!DOCTYPE html>
  <html>
  <head>
	  <title>Home</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	
		<!-- JavaScript Bundle with Popper -->
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	    <script src="scripts/jquery/jquery-3.6.4.min.js" ></script>
	    <script src="scripts/bootstrap/js/bootstrap.min.js" ></script>
	    <script src="scripts/bootstrap/js/bootstrap.min.js.map" ></script>
		<script src="/scripts/home.js"></script>
  		<link rel="stylesheet" href="style/style.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />


<style>
.material-symbols-sharp {
  font-variation-settings:
  'FILL' 0,
  'wght' 400,
  'GRAD' 0,
  'opsz' 48
}
</style>

  </head>
  <body>
  
	<section class="container-fluid mt-1">
		<%@ include file="common/header.jsp" %> 
	</section>

	<main class="container">
	    <div class="bg-body-tertiary p-5 rounded">
				  <div class="row">
				  	<div class="col align-self-end">
						<a class="btn btn-primary " href="<%= request.getContextPath() %>/proxy?method=agregarInput" role="button">
						<span class="material-symbols-outlined">add_circle</span>
						</a>
						<a class="btn btn-primary" href="<%= request.getContextPath() %>/proxy?method=agregarCategoria" role="button">
						<span class="material-symbols-outlined">view_comfy_alt</span>
						</a>
					</div>
				  </div>
			 
			      
			           <%
                       List<Producto> productos = (List<Producto>) request.getAttribute("productos");
                      %>
                       <table class="table">
							<thead class="thead-primary">
							<tr>
							<th scope="col">Id</th>
							<th scope="col">Nombre</th>
							<th scope="col">Marca</th>
							<th scope="col">Sprecio unitario</th>
							<th scope="col">Stock</th>
							<th scope="col">Acciones</th>
							</tr>
							</thead>
								<tbody>
								<% for (int i = 0; i < productos.size(); i++) { %>
								<%if(productos.get(i).getStock() > 10) {%>
								<tr class ="table-light">
								<% }else{ %>
								<tr class="table-danger">
								<%}%>		
								<th scope="row"><%=productos.get(i).getId() %></th>
								<td><%=productos.get(i).getNombre() %></td>
								<td><%=productos.get(i).getMarca().getNombre() %></td>
								<td><%=productos.get(i).getPrecio() %></td>
								<td><%=productos.get(i).getStock() %></td>
								<td class="form-check form-switch">
								
									 <input type="button" class="btn btn-primary material-symbols-sharp"  value="toc"/>
									
									 <input type="button" class="btn btn-danger material-symbols-outlined" id="<%=productos.get(i).getId() %>" value ="Delete"/>
									
                                   	<% if(productos.get(i).isPortada()){%>
  										<input class="form-check-input" type="checkbox" role="switch" id="<%=productos.get(i).getId()%>" checked>
                                	<% }else{ %>
  										<input class="form-check-input" type="checkbox" role="switch" id="<%=productos.get(i).getId()%>" >
                                   	<% } %>
                                 
                               </td>
							</tr>		
							<%}%>
							</tbody>
					</table>
			      		      
    	</div>
	
	</main>

	<section>
		<%@ include file="common/footer.jsp" %> 
	</section>

  </body>
  </html>