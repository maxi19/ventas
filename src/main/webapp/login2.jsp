<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
    <link rel="stylesheet" href="style/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<script src="scripts/jquery/jquery-3.6.4.min.js" ></script>
   <script src="scripts/login.js" ></script>
	
	<script src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@2.1.7/dist/loadingoverlay.min.js" ></script>
  </head>
</head>
<body>

<div class ="div-form-login">
	<div class = "form-back  mt-5 bg-dark">
   	<div>
   	    <a href=""><img src="media/logo.png"  align="right" width="120" hight="60" alt="logo"></a>
    	<h1>Iniciar:</h1>
   	</div>

	    <form class ="form-login" >
	    	<div class="form-group mb-2">
		    	<label for="Email" class ="">Email:</label>
				<input type="text" class="form-control form-control-lg form-control-sm" placeholder="Usuario" name="user" id="email" >
	    		<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
	    	</div>
	    	<div class="form-group mb-2" id="grupo-passowrd">
		    	<label for="Password" class ="">Password:</label>
				<input type="password"  class ="form-control form-control-lg form-control-sm" placeholder="Password" name="password" id="password" >
				<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
			</div>
			<div class="form-group mb-4">
				<input type="button" class="btn btn-primary"   value="ver">
	    		<button class="btn btn-primary" id="btn-login">Iniciar sesion</button>	
			</div>
	  	</form>
   </div>

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