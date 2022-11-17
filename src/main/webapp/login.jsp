<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
    <link rel="stylesheet" href="style/estilo14.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </head>
</head>
<body id="body">
    <div id="SI">
    <a href=""><img src="media/logo.png"  align="right" width="120" hight="60" alt="logo"></a>
    <h1>Iniciar:</h1>
	    <form  action="/login?" method="POST">
	    	<h3>Email:</h3>
			<input type="text"placeholder="Usuario" name="user" id="email" >
			<h3>Password:</h3>
			<input type="password" placeholder="Password:" name="password" id="password" >
			 <input type="button" onclick="mostrarContrasena0()" value="ver">
			 <br><br>
	    	<button>Iniciar sesion</button>
	    </form>
    </div>
</body>
<script>
    function mostrarContrasena0(){
    var tipo = document.getElementById("password");
    if(tipo.type == "password"){
          tipo.type = "text";
    }else{
          tipo.type = "password";
    }
   }
</script>
    


</html>