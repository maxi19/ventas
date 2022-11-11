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
      <link rel="stylesheet" href="style/estilo9.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </head>
  <body>
    <header>
      <div id="log">
      <a href="inicio.html"><img src="media/logo.png"  align="left" width="120" hight="60" alt="logo"></a>
      <a href=""> <button>cerrar sesion</button></a>
      </div>
      <nav> 
      <p>Buscador: <input type="search" name="busqueda" placeholder="gabinetes,fuentes,etc">
      <button>Buscar</button>
      </p>
    </nav>
    <nav>
      <ul id="menu">
        <li><a href="">COMPONENTES:</a>
        <ul>
          <li><a href="discos">DISCOS DE ALMACENAMIENTO</a></li>
          <li><a href="ram.html">MEMORIAS RAM</a></li>
          <li><a href="micro.html">PROCESADORES</a></li>
          <li><a href="cooler.html">COOLERS</a></li>
          <li><a href="placa.html">PLACAS MADRES</a></li>
          <li><a href="gabinete.html">GABINETES</a></li>
          <li><a href="fuente.html">FUENTES</a></li>
        </ul>  
      </li>
      </ul>
    </nav>
    </header>
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
		  <% HttpSession misession = request.getSession(true);%>	
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
	
	<button type="button" class="btn btn-danger">Confirmar compra</button>
	<button type="button" class="btn btn-primary">Continuar agregando</button>
	

  </div>
  </section>
  
  
  
    <footer>
    <div id="ayuda">
            <h2>AYUDA</h2>
            <p>Si tenés sugerencias o comentarios</p>
            <a href="conta.php"><button>contactos</button></a>
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
              <a href="acerca.php"><button>acerca de:</button></a>
              </div>
    </footer>
  </body>
  </html>