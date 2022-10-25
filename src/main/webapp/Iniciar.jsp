<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
    <link rel="stylesheet" href="estilo8.css">
</head>
<body>
    <div id="SI">
    <a href=""><img src="media/logo.png"  align="right" width="120" hight="60" alt="logo"></a>
    <h1>Iniciar:</h1>
    <form action="login.php" method="POST">
    
    <h3>Email:</h3>
<input type="email" placeholder="email" name="email" id="email" required>

		<h3>Contraseña:</h3>
		<input type="password" placeholder="Contraseña" name="contra" id="contra" required>

    <button>Iniciar sesion</button>

    </form>
    
    <h1>Crear usuario</h1>
    <a href="#miModal"><button>registrarse</button></a>
     </div>
     <div id="miModal" class="modal">
		<div class="modal-contenido">
            <h1>volver a iniciar sension?</h1>
        <a href="#"><button>inicio de sension</button></a>
        </form>
<form actioN="resgitro.php" method="POST">
<a href=""><img src="media/logo.png"  align="right" width="120" hight="60" alt="logo"></a>
<H1>RESGISTRO:<h1>
<h3>Nombre:</h3>
<input type="text" placeholder="Nombre" name="name" id="name" required>

<h3>Email:</h3>
<input type="email" placeholder="email" name="email" id="email" required>

<h3>Contra:</h3>
<input type="password" placeholder="Contraseña" name="contra" id="contra" required>

<h3>Usuario:</h3>
<input placeholder="Usuario" name="usuario" id="usuario" required>

<button>Registrarse</button>

</form>
		</div>
	</div>
</body>
</html>