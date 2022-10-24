<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
  <html>
  <head>
	  <title>Pagina Principal</title>
      <link rel="stylesheet" href="estilo5.css">
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
    <form form action="https://formsubmit.co/anapekka76@gmail.com" method="POST">
    <a href="inicio.php"><img src="media/logo.png"  align="right" width="120" hight="60" alt="logo"></a>
    <h2>sugerencias o comentarios:</h2>
		<input type="text" placeholder="name" name="name" required>
        <input type="email" placeholder="email" name="email" required>
		<input type="text" placeholder="asunto" name="asunto" required>
		<textarea placeholder="mensaje" name="msg"></textarea>
        <input type="submit" value="enviar">
        <input type="hidden" name="_next" value="http://localhost/Pagina/conta.php">
        <input type="hidden" name="_captcha" value="false">

    </form>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d820.4644417908407!2d-58.44749107063903!3d-34.6582948!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bccbe99fd320e7%3A0x192e3468e07c9304!2sPergamino%202882%2C%20C1437%20CABA!5e0!3m2!1ses!2sar!4v1660495455004!5m2!1ses!2sar" width="400" height="380" style="border:0;" align="letf" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  
    <center>
            <h1>Publicidad perdonen</h1>
            <img src="media/aña6.jpg" width="385" height="280" >
            <iframe width="420" height="285" src="https://www.youtube.com/embed/-06ajiHh-eQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
              <img src="media/aña7.jpg" width="385" height="280" >
            </center>
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