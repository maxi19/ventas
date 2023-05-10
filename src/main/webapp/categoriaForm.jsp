<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

  <html>
  <head>
	  <title>Ingreso de nuevo producto</title>
        <link rel="stylesheet" href="style/style.css">
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	     <link rel="stylesheet" href="scripts/bootstrap/css/bootstrap.min.css">

 		<script src="scripts/jquery/jquery-3.6.4.min.js" ></script>
		<script src="scripts/bootstrap/js/bootstrap.bundle.min.js" ></script>
		<script src="scripts/bootstrap/js/bootstrap.bundle.min.js.map" ></script>
		<script src="scripts/bootstrap/js/browser-polyfill.min.js.map" ></script>
		<script src="scripts/jquery/jquery1.13.2-ui.js" ></script>

		<script src="scripts/scripts.js"></script>
	</head>

  
  <body>
  <div class="container" >
	    <header>
			<nav class="navbar navbar-dar bg-darkk">
			 <div class="container">
    			<a class="navbar-brand" href="#">Gestor de Stock</a>
  			 			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
  			     <li class="nav-item active">
       				 <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
    			  </li>
  			</ul>
  			</div>
			</nav>
	    </header>

	    
	     <section class="form-crear-producto">
			<form action="<%= request.getContextPath() %>/agregarCategoria" method="Post" class="mt-4 mb-3">
			  <div class="form-group mb-3">
			    <label for="formGroupExampleInput">Nombre de categoria</label>
			    <input type="text" class="form-control" id="nombre" name = "nombre" placeholder="Nombre de categoria">
			  </div>
			  
			  

			<div class="alert alert-danger alert-dismissible fade hide" role="alert">
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>  
			</div>
			  

				
			  <div class="form-group mb-3">
			  	 <label class="form-label" id ="texto"></label>
			 	 <button type="submit" class="btn btn-primary">Ingresar producto</button>
			 </div>
			 

			 
			 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  				Launch demo modal
			</button>


<div class="row">
		<div class="col-md-3">
			<div id="email-html"></div>
			<input type="hidden" name="emails" id="emails"/>
		</div>
		<div class="col-md-3">
			<div class="ui-widget">
			  <input id="tags">  
			</div>
		</div>
	</div>


				<link rel="stylesheet" href="scripts/bootstrap/css/bootstrap.css.map">
				<link rel="stylesheet" href="scripts/bootstrap/css/bootstrap.min.css">



			 
			</form>
	    </section>
	  </div>
	  
	  <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" data-mdb-keyboard="false" data-mdb-backdrop="static" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="modal-cuerpo">
		<p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" 
		 data-bs-toggle="modal" 
		 data-bs-target="#exampleModal" 
		 data-dismiss="modal" 
		 id="btn-delete-modal-warning">Close</button>
      </div>
    </div>
  </div>
</div>
	
	  
  </body>
  </html>