<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freak's Corner</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark p-5">
		<a class="navbar-brand" href="#">Freak's Corner</a>
		<!-- 	<img src="img/logo1.png" width="100" height="100"> -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a
					class="nav-link fas fa-home mr-3 text-white" href="Main"></a></li>
				<li class="nav-item"><a class="nav-link" href="Registro">Registrarse
						</a></li>
				<li class="nav-item"><a class="nav-link mr-5" href="Login">Iniciar
						Sesión</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Categorías </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">TOP 10|Juegos</a> <a
							class="dropdown-item" href="#">Análisis de videojuegos</a> <a
							class="dropdown-item" href="#">Guías de videojuegos</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Contacto</a>
					</div></li>
			</ul>
			<form class="form-inline">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text" id="basic-addon1">@</span>
					</div>
					<input type="text" readonly="readonly" disabled="disabled"
						class="form-control" placeholder="Invitado" aria-label="Username"
						aria-describedby="basic-addon1">
				</div>
			</form>
		</div>
	</nav>
	<div class="container">
	
	<div class="row">
			<div class="col">
				<h2>Inicia Sesión</h2>
			</div>
		</div>
	
		<form class="needs-validation" method="post" action="Login">
			
			<div class="form-row">
				<div class="col-4 mb-3">
					<label for="validationTooltipUsername">Usuario</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"
								id="validationTooltipUsernamePrepend">@</span>
						</div>
						<input type="text" class="form-control"
							id="validationTooltipUsername" placeholder="Usuario"
							aria-describedby="validationTooltipUsernamePrepend" name="usuario">
					</div>
				</div>
				<div class="col-4 mb-3">
					<label for="validationTooltip02">Contraseña:</label> <input
						type="password" class="form-control" id="validationTooltip02"
						placeholder="Contraseña" value="Otto" name="password">
				</div>
			</div>
			<div class="row mt-5">
				<div class="col-4">
					<button type="submit" class="btn btn-success">Iniciar Sesión</button>
				</div>
				<div class="col-8">
					<button type="reset" class="btn btn-danger">Cancelar</button>
				</div>
			</div>
			</form>
	</div>
</body>
</html>