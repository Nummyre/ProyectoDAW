<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freak's Corner</title>
<link href="img/logo4.png" rel="icon" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/Style.css">
<script type="text/javascript" src="js/Style.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		String error = (String) request.getAttribute("error");
	%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<img src="img/logo4.png" width="200" height="200">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="h nav-link text-white p-4"
					href="Main">Inicio</a></li>
				<li class="nav-item"><a class=" nav-link text-white p-4"
					href="Registro">Registrarse</a></li>
				<li class="nav-item"><a class=" nav-link text-white p-4"
					href="Login">Iniciar Sesión</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle p-4" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">Categorías</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="Top10">TOP 10 | Juegos</a> <a
							class="dropdown-item" href="Analisis">Análisis</a> <a
							class="dropdown-item" href="Guia">Guías</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="Comunidad">Comunidad</a>
					</div></li>
				<li class="nav-item"><a class="nav-link text-white p-4"
					href="Contacto">Contacto</a></li>
			</ul>
			<form class="form-inline ml-5">

				<div class="input-group">
					<div class="input-group-prepend">
						<img src="img/usuari.png" width="100" height="65"
							class="img-circle">
					</div>
					<input type="text" readonly="readonly" disabled="disabled"
						class="form-control mt-3 ml-2" placeholder="Invitado"
						aria-label="Username" aria-describedby="basic-addon1" id="us">
				</div>
			</form>
		</div>
	</nav>
	<div class="container p-5 mb-5">

		<div class="row mt-5">
			<div class="col">
				<h2>Restablecer Contraseña</h2>
			</div>
		</div>

		<form class="needs-validation" method="post" action="RestablecerPass">
			<div class="form-row mt-4">
	
				<div class="col-md-4 mb-3">
					<label>*Email:</label> <input type="email" class="form-control" id="e"
						placeholder="name@example.com" name="email" >
						
				</div>
				
				
			</div>
			
				<%
				if (error != null) {	
					out.print("<div class=\"row mt-2 mb-5\">");
					out.print("<div class=\"col-4\">");
					out.print("<div class=\"alert alert-danger\">");
					out.print("<strong>¡Error!</strong> El email es incorrecto, intentelo de nuevo.");
					out.print("</div>");
					out.print("</div>");
					out.print("</div>");
				} 
			%>
			
			
			<div class="row mt-5">
				<div class="col-4">
					<button type="submit" class="btn btn-success">Enviar</button>
				</div>
				<div class="col-8">
					<button type="reset" class="btn btn-danger">Cancelar</button>
				</div>
			</div>
		</form>
	</div>
	<div class="footer bg-dark">
		<div class="footer-copyright text-center py-3 bg-success">
			© 2020 Copyright: <a class="text-white"
				href="https://Freak'sCorner.com/">Freak'sCorner.com</a>
		</div>
	</div>
</body>
</html>