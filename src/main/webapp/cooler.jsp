<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.List"%>
     <%@page import="com.ventas.entity.Producto"%>
    
<!DOCTYPE html>
  <html>
  <head>
	  <title>Micropocesadores:
      </title>
      <link rel="stylesheet" href="estilo2.css">
  </head>
  <body>
    <header>
      <div id="log">
      <a href="inicio.html"><img src="media/logo.png"  align="left" width="120" hight="60" alt="logo"></a>
      <a href=""><button>cerrar sesion</button></a>
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
          <li><a href="discos.html">DISCOS DE ALMACENAMIENTO</a></li>
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
    <section id="inicio">
      <h1>Coolers De ID-Cooling:</h1>
      <div id="prod1">
      <% List<Producto> ic = (List<Producto>) request.getAttribute("ic"); %>
      		 <% for (int i = 0; i < ic.size(); i++) { %>
 	    
 	    <%if (i == 0){%>
      <div id="fuego">
        <img src="media/prodcoo2.jpg" align="left"><p><%=ic.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=ic.get(i).getPrecio()%></font></p><button>COMPRAR</button>
		   <a href="#miModal"><button>INFO</button></a>  
      </div>
       <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodcoo5.jpg" align="left"><p><%=ic.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=ic.get(i).getPrecio()%></font></p><button>COMPRAR</button>
        <a href="#miModal2"><button>INFO</button></a> 
      </div>
       <%} else { %>
      <div id="f">
        <img src="media/prodcoo6.jpg" align="left"><p><%=ic.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=ic.get(i).getPrecio()%></font></p><button>COMPRAR</button>
        <a href="#miModal3"><button>INFO</button></a> 
      </div>
        <%}
 	    } %>
    </div>
    <h1>Coolers Master Hype:</h1>
      <div id="prod1">
      <% List<Producto> mh = (List<Producto>) request.getAttribute("mh"); %>
      		 <% for (int i = 0; i < mh.size(); i++) { %>
 	    
 	    <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodcoo7.jpg" align="left"><p><%=mh.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=mh.get(i).getPrecio()%></font></p><button>COMPRAR</button>
       <a href="#miModal4"><button>INFO</button></a> 
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodcoo8.jpg" align="left"><p><%=mh.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=mh.get(i).getPrecio()%></font></p><button>COMPRAR</button>
        <a href="#miModal5"><button>INFO</button></a> 
      </div>
       <%} else { %>
      <div id="f">
        <img src="media/prodcoo9.jpg" align="left"><p><%=mh.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=mh.get(i).getPrecio()%></font></p><button>COMPRAR</button>
        <a href="#miModal6"><button>INFO</button></a> 
      </div>
       <%}
 	    } %>
    </div>
    <h1>Coolers De Deepcool:</h1>
      <div id="prod1">
      <% List<Producto> dp = (List<Producto>) request.getAttribute("dp"); %>
      		 <% for (int i = 0; i < mh.size(); i++) { %>
 	    
 	    <%if (i == 0){%>
      <div id="fuego">
        <img src="media/prodcoo.jpg" align="left"><p><%=dp.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=dp.get(i).getPrecio()%></font></p><button>COMPRAR</button>
        <a href="#miModal7"><button>INFO</button></a> 
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodcoo4.jpg" align="left"><p><%=dp.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=dp.get(i).getPrecio()%></font></p><button>COMPRAR</button>
        <a href="#miModal8"><button>INFO</button></a> 
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodcoo3.jpg" align="left"><p><%=dp.get(i).getDescripcion()%></p><p><font color="blue"><%=dp.get(i).getPrecio()%></font></p><br></br><button>COMPRAR</button>
        <a href="#miModal9"><button>INFO</button></a> 
      </div>
       <%}
 	    } %>
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
    <div id="miModal" class="modal">
		<div class="modal-contenido">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
5 w</ul>
<ul>Tdp
180 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
154 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
32 dba</ul></hr>
		</div>
</div>
<div id="miModal2" class="modal">
		<div class="modal-contenido2">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
3 w</ul>
<ul>Tdp
250 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
154 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
35 dba</ul></hr>
		</div>
</div>
<div id="miModal3" class="modal">
		<div class="modal-contenido3">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
5 w</ul>
<ul>Tdp
280 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
157 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
2</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
35 dba</ul></hr>
		</div>
		</div>
</div>
<div id="miModal4" class="modal">
		<div class="modal-contenido4">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
5 w</ul>
<ul>Tdp
105 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
117 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
95 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
30 dba</ul></hr>
		</div>
</div>
<div id="miModal5" class="modal">
		<div class="modal-contenido5">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
  <ul>Consumo
3 w</ul>
<ul>Tdp
150 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
158 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Blanca</ul>
<ul>Nivel De Ruido Máxima
31 dba</ul></hr>
		</div>
</div>
<div id="miModal6" class="modal">
		<div class="modal-contenido6">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
10 w</ul>
<ul>Tdp
180 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
165 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
2</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
ARGB</ul>
<ul>Nivel De Ruido Máxima
27 dba</ul></hr>
		</div>
</div>
<div id="miModal7" class="modal">
		<div class="modal-contenido7">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
<hr><ul>Consumo
5 w</ul>
<ul>Tdp
105 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
112 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
80 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
25 dba</ul></hr>
		</div>
</div>
<div id="miModal8" class="modal">
		<div class="modal-contenido8">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
5 w</ul>
<ul>Tdp
130 w</ul>
<ul>Tipo De Disipasión
Aire</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Roja</ul>
<ul>Nivel De Ruido Máxima
28 dba</ul></hr>
		</div>
</div>
<div id="miModal9" class="modal">
		<div class="modal-contenido9">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
6 w</ul>
<ul>Tdp
150 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
158 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
2</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
27.6 dba</ul></hr>
		</div>
</div>
  </body>
  </html>