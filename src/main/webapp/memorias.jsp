<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
  <html>
  <head>
	  <title>Ram:
      </title>
      <link rel="stylesheet" href="estilo2.css">
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
          <li><a href="memorias">MEMORIAS RAM</a></li>
          <li><a href="micro">PROCESADORES</a></li>
          <li><a href="cooler">COOLERS</a></li>
          <li><a href="placa">PLACAS MADRES</a></li>
          <li><a href="gabinete">GABINETES</a></li>
          <li><a href="fuente">FUENTES</a></li>
        </ul>  
      </li>
      </ul>
    </nav>
    </header>
    <section id="inicio">
      <h1>Memorias Ram De Geil:</h1>
      <div id="prod1">
      <% List<Producto> geil = (List<Producto>) request.getAttribute("geil"); %>
      		 <% for (int i = 0; i < geil.size(); i++) { %>
 	    
 	    <%if (i == 0){%>
		      <div id="fuego">
		       <img src="media/prodram1.jpg" align="left"><p>Memoria GeiL DDR4 16GB 3000MHz Orion RGB Red</p><br></br><p><font color="blue">$ 13.350</font></p><button>COMPRAR</button>
		       <a href="#miModal"><button>INFO</button></a>   
		      </div>
	      <%}else if(i == 1){%>
		      <div id="p">
		        <img src="media/prodram2.jpg" align="left"><p>Memoria GeiL DDR4 16GB 3000MHz Super Luce RGB Black</p><br></br><p><font color="blue">$ 15.950</font></p><button>COMPRAR</button>
		        <a href="#miModal2"><button>INFO</button></a> 
		      </div>
	      <%} else { %>
		      <div id="f">
		        <img src="media/prodram4.jpg" align="left"><p>Memoria GeiL DDR4 8GB 3000MHZ EVO POTENZA Black</p><br></br><p><font color="blue">$ 6.800</font></p><button>COMPRAR</button>
		        <a href="#miModal3"><button>INFO</button></a> 
		      </div>
	      <%}
 	    } %>
    </div>
    
    
    <h1>Memorias Ram De Patriot</h1>
      <div id="prod1">
      <% List<Producto> patriot = (List<Producto>) request.getAttribute("patriot"); %>
      		 <% for (int i = 0; i < patriot.size(); i++) { %>
       <%if (i == 0){%>
		      <div id="fuego">
		       <img src="media/prodram4.jpg" align="left"><p>Memoria Patriot DDR4 8GB (2x4GB) 3200Mhz Steel</p><br></br><p><font color="blue">$ 7.300</font></p><button>COMPRAR</button>
		       <a href="#miModal4"><button>INFO</button></a>   
		      </div>
		<%}else if(i == 1){%>
		      <div id="p">
		        <img src="media/prodram5.jpg" align="left"><p>Memoria Patriot Viper DDR4 16GB (2x8GB) 3200MHz Steel CL16</p><br></br><p><font color="blue">$ 13.600</font></p><button>COMPRAR</button>
		        <a href="#miModal5"><button>INFO</button></a> 
		      </div>
		<%} else { %>
		      <div id="f">
		        <img src="media/prodram6.jpg" align="left"><p>Memoria Patriot Viper DDR4 32GB (2x16GB) 3200Mhz Steel RGB Black</p><p><font color="blue">$ 13.600</font></p><button>COMPRAR</button>
		        <a href="#miModal6"><button>INFO</button></a> 
		      </div>
		 <%}
       } %>
    </div>
    <h1>Memorias Ram De Adata:</h1>
      <div id="prod1">
      <% List<Producto> adata = (List<Producto>) request.getAttribute("adata"); %>
      		 <% for (int i = 0; i < adata.size(); i++) { %>
       <%if (i == 0){%>
	      <div id="fuego">
	        <img src="media/prodram7.jpg" align="left"><p>Memoria Adata DDR4 8GB 3200Mhz XPG Gammix D30</p><br></br><p><font color="blue">$ 7.650</font></p><button>COMPRAR</button>
	        <a href="#miModal7"><button>INFO</button></a>   
	      </div>
      <%}else if(i == 1){%>
	      <div id="p">
	        <img src="media/prodram8.jpg" align="left"><p>Memoria Adata DDR4 16GB 3000MHz XPG Gammix D10 Black</p><br></br><p><font color="blue">$ 13.900</font></p><button>COMPRAR</button>
	        <a href="#miModal8"><button>INFO</button></a> 
	      </div>
      <%} else { %>
	      <div id="f">
	        <img src="media/prodram9.jpg" align="left"><p>Memoria ADATA DDR4 16GB 3600MHZ XPG Spectrix D41 RGB Black</p><p><font color="blue">$ 15.250</font></p><button>COMPRAR</button>
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
<ul>Marca	
GEIL</ul>
<ul>
Modelo	
ORION</ul>
<ul>
Capacidad	
8 GB</ul>
<ul>
Frecuencia	
3200 MHz</ul>
<ul>
Iluminación	
RGB</ul>
<ul>
Color	
Negro</ul></hr>
		</div>
</div>
<div id="miModal2" class="modal">
		<div class="modal-contenido2">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Marca	GeIL</ul>
<ul>Tamaño de la memoria de la computadora	16 GB</ul>
<ul>Tecnología de memoria RAM	DDR4</ul>
<ul>Velocidad de memoria	3000 MHz</ul>
<ul>Dispositivos compatibles</ul></hr>
		</div>
</div>
<div id="miModal3" class="modal">
		<div class="modal-contenido3">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Marca: Geil </ul>

<ul>Modelo: GAPR48GB3000C16ASC</ul>

<ul>Color:
Black</ul>

<ul>Frecuencia:
3000MHz </ul>

<ul>Latencia CAS:
CL 16</ul>

<ul>Capacidad:
8GB</ul>

<ul>Voltaje:
1.35 V /ul></ul></hr>
		</div>
		</div>
</div>
<div id="miModal4" class="modal">
		<div class="modal-contenido4">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
        <hr>      
  <ul>Capacidad: 8GB (1 x 8GB)</ul>
  <ul>Frequencia Base: PC4-21300 (2666MHz)</ul>
  <ul> Base Timings: 19-19-19-43</ul>
  <ul>Tested Frequency Profile 1: PC4-25600 (3200MHz)</ul>
  <ul>Tested Timings: 18-22-22-42</ul>
  <ul> Tested Voltage for Profile 1: 1.35V</ul>
  <ul>Format: NON-ECC Unbuffered DIMM</ul>
  <ul> Pin Out: 288-Pin</ul></hr>
		</div>
</div>
<div id="miModal5" class="modal">
		<div class="modal-contenido5">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
  <ul>Marca	Patriot Memory</ul>
  <ul>Tamaño de la memoria de la computadora	16 GB</ul>
  <ul>Tecnología de memoria RAM	DDR4</ul>
  <ul>Velocidad de memoria	3200 MHz</ul>
  <ul>Dispositivos compatibles	Desktop</ul></hr>
		</div>
</div>
<div id="miModal6" class="modal">
		<div class="modal-contenido6">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Memoria RAM:
32 GB</ul>
<ul>Tipo de memoria interna:
DDR4</ul>
<ul>Velocidad de memoria del reloj:
3200 MHz</ul>
<ul>Diseño de memoria (módulos x tamaño):
2 x 16 GB</ul>
<ul>Latencia CAS:
18</ul></hr>
		</div>
</div>
<div id="miModal7" class="modal">
		<div class="modal-contenido7">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
<hr><ul>Memoria RAM:
8 GB</ul>
<ul>Tipo de memoria interna:
DDR4</ul>
<ul>Velocidad de memoria del reloj:
3200 MHz</ul>
<ul>Diseño de memoria (módulos x tamaño):
1 x 8 GB</ul>
<ul>Latencia CAS:
CL16</ul></hr>
		</div>
</div>
<div id="miModal8" class="modal">
		<div class="modal-contenido8">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Diseño único del disipador de calor</ul>
<ul> Disipador térmico de perfil bajo para una instalación sin esfuerzo</ul>
<ul> DDR4 - gran rendimiento y eficiencia energética</ul>
<ul>Excelente enfriamiento y estabilidad</ul>
<ul> Intel XMP 2.0 - overclocking más accesible</ul>
<ul> Escudo térmico abierto para una mejor disipación</ul>
<ul> Disipador de dientes con rayas de plata que hace que el sistema tenga un aspecto fresco</ul>
<ul> Opciones en negro, rojo o blanco, todas con placa de circuito impreso negra - combinan perfectamente con diversas placas base</ul></hr>
		</div>
</div>
<div id="miModal9" class="modal">
		<div class="modal-contenido9">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Deslumbrar con la iluminación RGB</ul>
<ul> Personalizar su estilo</ul>
<ul>Seguir el rendimiento</ul>
<ul> Calidad de la que puede depender</ul>
<ul> Aumento sencillo de la velocidad del reloj con Intel® XMP 2.0</ul>
<ul> Prepárese para el control RGB con la instalación rápida y gratuita de una aplicación</ul>
<ul> Edición especial para juegos TUF</ul></hr>
		</div>
</div>
  </body>
  </html>