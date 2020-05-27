<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freak's Corner</title>
<link href="img/logo4.png" rel="icon" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/Style.css">
<script type="text/javascript" src="js/Fichas.js"></script>
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
	<header>
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
					<li class="nav-item active"><a
						class="h nav-link text-white p-4" href="Main">Inicio</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle p-4" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Categorías</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="Analisis">Análisis</a> <a
								class="dropdown-item" href="Guia">Guías</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="Top10">TOP 10 | Juegos</a>
						</div></li>
					<li class="nav-item "><a class="h nav-link text-white p-4"
						href="Comunidad">Comunidad</a></li>
					<li class="nav-item"><a class="nav-link text-white p-4"
						href="Contacto">Contacto</a></li>
				</ul>
			</div>
		</nav>
	</header>
	<div class="pos-f-t">
		<div class="collapse" id="navbarToggleExternalContent">
			<div class="bg-success p-4">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item text-white"><h5>Email:
							freakscorner2020@gmail.com</h5></li>
					<li class="nav-item text-white"><h5>Teléfono: 555-555-555</h5></li>
					<li class="nav-item text-white"><h5>C/ Plaza españa CP:
							0780 Mallorca</h5></li>
				</ul>
			</div>
		</div>
		<nav class="navbar navbar-dark bg-success">
			<h4 class="text-white">Datos de la empresa</h4>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarToggleExternalContent"
				aria-controls="navbarToggleExternalContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

		</nav>
	</div>
	<div class="container mt-5 p-4">

		<div class="row">
			<div class="col-4 mt-5">
				<h3 class="mb-4">Contacto</h3>
			</div>
			<div class="col"></div>
			<div class="col"></div>
			<div class="col mb-3">
				<img src="img/usuari.png" width="200" height="130"
					class="img-circle ml-5">
			</div>

		</div>
		<p>Sí tienes un problema o alguna pregunta sobre la web, no dudes
			en contactarnos. Un administrador se pondrá en contacto con usted.</p>
		<p>
			Envíe un mensaje al correo electrónico: <strong>
				freakscorner2020@gmail.com</strong>
		</p>

	</div>
	<div class="footer bg-dark mt-5">
		<div class="footer-copyright text-center py-3 bg-success">
			© 2020 Copyright: <a class="text-white"
				href="https://Freak'sCorner.com/">Freak'sCorner.com</a>
		</div>
	</div>
</body>
</html>