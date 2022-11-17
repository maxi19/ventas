<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
  <html>
  <head>
	  <title>PLacas:
      </title>
      <link rel="stylesheet" href="style/estilo11.css">
      <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </head>
  <body id="body">
    <header>
      <div id="log">
      <a href="inicio"><img src="media/logo.png"  align="left" width="120" hight="60" alt="logo"></a>
      </div>
        <ul>
          <li><a href="discos">DISCOS DE ALMACENAMIENTO</a></li>
          <li><a href="memorias">MEMORIAS RAM</a></li>
          <li><a href="micro">PROCESADORES</a></li>
          <li><a href="cooler">COOLERS</a></li>
          <li><a href="placa">PLACAS MADRES</a></li>
          <li><a href="gabinete">GABINETES</a></li>
          <li><a href="fuente">FUENTES</a></li>
        </ul>  
    </nav>
    </header>
    <section id="inicio">
      <h2>Mother ASUS:</h2>
      <div id="prod1">
      <% List<Producto> asus = (List<Producto>) request.getAttribute("asus"); %>
      		 <% for (int i = 0; i < asus.size(); i++) { %>
      		 
      		 <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodpla.jpg" align="left"><p><%=asus.get(i).getDescripcion()%></p><<p><font color="blue"><%=asus.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=asus.get(i).getId()%>" class="boton">COMPRAR</a>
    
       	<a href="/carrito?idprod=<%=asus.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodpla2.jpg" align="left"><p><%=asus.get(i).getDescripcion()%></p><p><font color="blue"><%=asus.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=asus.get(i).getId()%>" class="boton">COMPRAR</a>
        
        	<a href="/carrito?idprod=<%=asus.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodpla3.jpg" align="left"><p><%=asus.get(i).getDescripcion()%></p><p><font color="blue"><%=asus.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=asus.get(i).getId()%>"class="boton" >COMPRAR</a>
      
        	<a href="/carrito?idprod=<%=asus.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
     <%}
      		 }%>
    </div>
    <br>
    <h2>Mother Asrock:</h2>
      <div id="prod1">
      <% List<Producto> asrock = (List<Producto>) request.getAttribute("asrock"); %>
      		 <% for (int i = 0; i < asrock.size(); i++) { %>
      		 
      		 <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodpla4.jpg" align="left"><p><%=asrock.get(i).getDescripcion()%></p><p><font color="blue"><%=asrock.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=asrock.get(i).getId()%>" class="boton">COMPRAR</a>
       	<a href="/carrito?idprod=<%=asrock.get(i).getId()%>" class="boton2">CARRITO</a>    
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodpla5.jpg" align="left"><p><%=asrock.get(i).getDescripcion()%></p><p><font color="blue"><%=asrock.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=asrock.get(i).getId()%>" class="boton">COMPRAR</a>
        	<a href="/carrito?idprod=<%=asrock.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodpla6.jpg" align="left"><p><%=asrock.get(i).getDescripcion()%></p><p><font color="blue"><%=asrock.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=asrock.get(i).getId()%>" class="boton">COMPRAR</a>	
        	<a href="/carrito?idprod=<%=asrock.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
    <%}
      		 }%>
    </div>
    <br>
    <h2>Mother Gigabyte:</h2>
      <div id="prod1">
      <% List<Producto> gigabyte = (List<Producto>) request.getAttribute("gigabyte"); %>
      		 <% for (int i = 0; i < gigabyte.size(); i++) { %>
      		 
      		 <%if (i == 0){%>
      <div id="fuego">
        <img src="media/prodpla7.jpg" align="left"><p><%=gigabyte.get(i).getDescripcion()%></p><p><font color="blue"><%=gigabyte.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=gigabyte.get(i).getId()%> " class="boton" >COMPRAR</a>
        	<a href="/carrito?idprod=<%=gigabyte.get(i).getId()%>" class="boton2">CARRITO</a>   
      </div>
      <%} else { %>
      <div id="p">
        <img src="media/prodpla8.jpg" align="left"><p><%=gigabyte.get(i).getDescripcion()%></p><p><font color="blue"><%=gigabyte.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=gigabyte.get(i).getId()%>" class="boton" >COMPRAR</a>
        
        	<a href="/carrito?idprod=<%=gigabyte.get(i).getId()%>" class="boton2">CARRITO</a>  
      </div>
          <%}
      		 }%>
      
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