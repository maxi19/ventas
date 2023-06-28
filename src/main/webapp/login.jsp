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
   	<script type="text/javascript">
	var contextPath='<%=request.getContextPath()%>';
	</script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	
	<script src="scripts/jquery/jquery-3.6.4.min.js" ></script>
   
   <script src="scripts/login.js" ></script>
	
	<script src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@2.1.7/dist/loadingoverlay.min.js" ></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

  </head>
</head>
<body>

<div class ="div-form-login">
	<div class = "card  mt-5 bg-dark text-white">
		<div class =" col-12 ">
   	 	<h2 class="mr-2 text-center">LOGIN</h2>
    	<p class="text-center">ingrese su usuario y password!</p>
   	
	    <form class ="form-login" >
	    	<div class="col mb-4">
				<input type="text" class="form-control form-control-lg form-control-sm" placeholder="Usuario" name="user" id="email" >
	    	</div>
	    	<div class="col mb-4">
				<input type="password"  class ="form-control form-control-lg form-control-sm" placeholder="Password" name="password" id="password" >
			</div>
			<div class="col mt-4">
	    		<button class="btn btn-primary" id="btn-login">Iniciar sesion</button>	
			</div>
	  	</form>
		</div>
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