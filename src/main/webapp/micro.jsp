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
      <h1>Micropocesadores de AMD:</h1>
      <div id="prod1">
      <% List<Producto> amd = (List<Producto>) request.getAttribute("amd"); %>
      		 <% for (int i = 0; i < amd.size(); i++) { %>
 	    
 	    <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodram3.jpg" align="left"><p><%=amd.get(i).getDescripcion()%></p><p><font color="blue"><%=amd.get(i).getPrecio()%></font></p><button>COMPRAR</button>
       <a href="#miModal"><button>INFO</button></a> 
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodram3.jpg" align="left"><p><%=amd.get(i).getDescripcion()%></p><p><font color="blue"><%=amd.get(i).getPrecio()%></font></p><button>COMPRAR</button>
        <a href="#miModal2"><button>INFO</button></a> 
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodpro.jpg" align="left"><p><%=amd.get(i).getDescripcion()%></p><p><font color="blue"><%=amd.get(i).getPrecio()%></font></p><button>COMPRAR</button>
        <a href="#miModal3"><button>INFO</button></a> 
      </div>
      <%}
 	    } %>
    </div>
    <h1>Micropocesadores de INTEL:</h1>
      <div id="prod1">
       <% List<Producto> intel = (List<Producto>) request.getAttribute("intel"); %>
      		 <% for (int i = 0; i < intel.size(); i++) { %>
 	    
 	    <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodpro2.jpg" align="left"><p><%=intel.get(i).getDescripcion()%></p><p><font color="blue"><%=intel.get(i).getPrecio()%></font></p><button>COMPRAR</button>
       <a href="#miModal4"><button>INFO</button></a>   
      </div>
       <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodpro3.jpg" align="left"><p><%=intel.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=intel.get(i).getPrecio()%></font></p><button>COMPRAR</button>
        <a href="#miModal5"><button>INFO</button></a> 
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodpro4.jpg" align="left"><p><%=intel.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=intel.get(i).getPrecio()%></font></p><button>COMPRAR</button>
        <a href="#miModal6"><button>INFO</button></a> 
      </div>
      <%}
 	    } %>
    </div>
    </section>
    <footer>
    <div id="ayuda">
            <h2>AYUDA</h2>
            <p>Si tenes sugerencias o comentarios</p>
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
<ul># de núcleos de CPU 6.</ul>
<ul># de hilos 12.</ul>
<ul>Reloj base 3.7GHz.</ul>
<ul>Reloj de aumento máx. Hasta 4.6GHz.</ul>
<ul>Caché L2 total 3MB.</ul>
<ul>Caché L3 total 32MB.</ul>
<ul>Desbloqueados Sí</ul>
<ul>CMOS TSMC 7nm FinFET.</ul></hr>
		</div>
</div>
<div id="miModal2" class="modal">
		<div class="modal-contenido2">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>*Este procesador no cuenta con graficos integrados* Especificaciones: Socket AM4 3ra Gen.</ul>
<ul>Núcleos 6.</ul>
<ul>Hilos 12.</ul>
<ul>Frecuencia 3.6 Ghz.</ul>
<ul>Frecuencia Turbo 4 GHz.</ul>
<ul>Proceso de Fabricación 7 nm.</ul>
<ul>Incluye Cooler CPU Sí</ul>
<ul>TDP 65 W.</ul></hr>
		</div>
</div>
<div id="miModal3" class="modal">
		<div class="modal-contenido3">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Arquitectura de CPU: Zen 3</ul>
<ul>Núcleos: 8</ul>
<ul>Hilos: 16</ul>
<ul>Caché L3 Total: 16MB</ul>
<ul>Caché L2 Total: 4MB</ul>
<ul>Frecuencia base: 3.8GHz</ul>
<ul>Frecuencia boost: Hasta 4.6GHz</ul>
<ul>Arquitectura de GPU: Vega</ul>
<ul>Núcleos de GPU: 8</ul>
<ul>Frecuencia de GPU: 2000MHz</ul>
<ul>TDP Predeterminado: 65W</ul>
<ul>Líneas PCI-Express: 20x PCI-Express 3.0</ul></hr>
		</div>
		</div>
</div>
<div id="miModal4" class="modal">
		<div class="modal-contenido4">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Cantidad de núcleos 6.</ul>
<ul>Cantidad de subprocesos 12.</ul>
<ul>Frecuencia turbo máxima 4,30 GHz.</ul>
<ul>Frecuencia de la Tecnología Intel® Turbo Boost 2.0‡ 4.30 GHz.</ul>
<ul>Frecuencia básica del procesador 2,90 GHz.</ul>
<ul>Caché 12 MB Intel® Smart Cache.</ul>
<ul>Velocidad del bus 8 GT/s.</ul>
<ul>TDP 65 W.</ul></hr>
		</div>
</div>
<div id="miModal5" class="modal">
		<div class="modal-contenido5">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
  <ul>Cantidad de núcleos 16.</ul>
  <ul># of Performance-cores 8.</ul>
  <ul># of Efficient-cores 8.</ul>
  <ul>Cantidad de subprocesos 24.</ul>
  <ul>Frecuencia turbo máxima 5,20 GHz.</ul>
  <ul>Frecuencia de la Tecnología Intel® Turbo Boost Max 3.0 ‡ 5,20 GHz.</ul>
  <ul>Performance-core Max Turbo Frequency 5.10 GHz.</ul>
  <ul>Efficient-core Max Turbo Frequency 3.90 GHz.</ul></hr>
		</div>
</div>
<div id="miModal6" class="modal">
		<div class="modal-contenido6">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>
<ul>Arquitectura	Alder Lake S (64 bits)</ul>
<ul>Litografía	7 nm Intel</ul>
<ul>PVPR	122 $</ul>
<ul>Zócalo	LGA 1700</ul>
<ul>Núcleos totales	4</ul>
<ul>Hilos de ejecución	8</ul>
<ul>Núcs. principales	4 rendimiento a 3.3 GHz</ul>
<ul>Frec. turbo núcs. prin.	hasta 4.3 GHz</ul>
<ul>Caché L2 total	5120 KB</ul>
<ul>Caché L3	12288 KB</ul></hr>
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