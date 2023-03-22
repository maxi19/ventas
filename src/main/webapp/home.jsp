<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>

<!DOCTYPE html>
  <html>
  <head>
	  <title>Discos:</title>
      <link rel="stylesheet" href="style/estilo11.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
		<!-- JavaScript Bundle with Popper -->
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </head>
  </head>
  <body id="body">
    
     <section id="inicio">
			      <a href=""> <button>cerrar sesion</button></a>
			      <a class="btn btn-primary" href="<%= request.getContextPath() %>/proxy?method=agregarInput" role="button">Agregar producto</a>
			      
			           <%
                       List<Producto> productos = (List<Producto>) request.getAttribute("productos");
                      %>
                       <table class="table">
							<thead class="thead-primary">
							<tr>
							<th scope="col">Id</th>
							<th scope="col">Descripcion</th>
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
								<th scope="row"><%=productos.get(i).getId() %></th>
								<td><%=productos.get(i).getDescripcion() %></td>
								<td><%=productos.get(i).getMarca() %></td>
								<td><%=productos.get(i).getPrecio() %></td>
								<td><%=productos.get(i).getStock() %></td>
								<td>
								     <a class="btn btn-primary" href="#" role="button">Stock</a>
                                     <a class="btn btn-outline-danger" href="#" role="button">Eliminar</a>
                               </td>
							</tr>
							<%}else{%>
							<tr class="table-danger">
								<th scope="row"><%=productos.get(i).getId() %></th>
								<td><%=productos.get(i).getDescripcion() %></td>
								<td><%=productos.get(i).getMarca() %></td>
								<td><%=productos.get(i).getPrecio() %></td>
								<td><%=productos.get(i).getStock() %></td>
								<td>
                                 <a class="btn btn-primary" href="#" role="button">Stock</a>
                                 <a class="btn btn-outline-danger" href="#" role="button">Eliminar</a>
                                </td>
							</tr>
							<%}%>
							<%} %>
							</tbody>
					</table>
			      		      
    </section>
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


  </body>
  </html>