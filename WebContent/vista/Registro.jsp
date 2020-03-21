<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
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
	<div class='container mt-5'>
		<div class="row">
			<div class="col">
				<h2>Registrarse</h2>
			</div>
		</div>
		<form  method="post" action="Registro" enctype="multipart/form-data">
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
							aria-describedby="validationTooltipUsernamePrepend" name="user"
							required>
					</div>
				</div>
				<div class="col-4 mb-3">
					<label for="validationTooltip02">Contraseña:</label> <input
						type="password" class="form-control" id="validationTooltip02"
						placeholder="Contraseña" value="Otto" name="pass" required>
				</div>
			</div>
			<div class="form-row">
				<div class="col-md-4 mb-3">
					<label for="validationTooltip01">Nombre:</label> <input type="text"
						class="form-control" id="validationTooltip01" placeholder="Nombre"
						value="Nombre" name="nom" required>
				</div>

				<div class="col-md-4 mb-3">
					<label for="exampleFormControlInput1">Email:</label> <input
						type="email" class="form-control" id="exampleFormControlInput1"
						placeholder="name@example.com" name="email">
				</div>

			</div>

			<div class="form-group col-md-4 mb-3">
				<label for="exampleFormControlFile1">Escoge la foto de
					perfil</label> <input type="file" class="form-control-file"
					id="exampleFormControlFile1" name="foto">
			</div>
			<div class="row mt-5">
				<div class="col-4">
					<button type="submit" class="btn btn-success">Registrarse</button>
				</div>
				<div class="col-8">
					<button type="reset" class="btn btn-danger">Cancelar</button>
				</div>
			</div>
		</form>
	</div>

	<!-- Footer -->
	<footer class="page-footer font-small bg-dark mt-5">

		<div style="background-color: #6351ce;">
			<div class="container">

				<!-- Grid row-->
				<div class="row py-4 d-flex align-items-center">

					<!-- Grid column -->
					<div
						class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
						<h6 class="mb-0">Get connected with us on social networks!</h6>
					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-md-6 col-lg-7 text-center text-md-right">

						<!-- Facebook -->
						<a class="fb-ic"> <i class="fab fa-facebook-f white-text mr-4">
						</i>
						</a>
						<!-- Twitter -->
						<a class="tw-ic"> <i class="fab fa-twitter white-text mr-4">
						</i>
						</a>
						<!-- Google +-->
						<a class="gplus-ic"> <i
							class="fab fa-google-plus-g white-text mr-4"> </i>
						</a>
						<!--Linkedin -->
						<a class="li-ic"> <i
							class="fab fa-linkedin-in white-text mr-4"> </i>
						</a>
						<!--Instagram-->
						<a class="ins-ic"> <i class="fab fa-instagram white-text">
						</i>
						</a>

					</div>
					<!-- Grid column -->

				</div>
				<!-- Grid row-->

			</div>
		</div>

		<!-- Footer Links -->
		<div class="container text-center text-md-left mt-5">

			<!-- Grid row -->
			<div class="row mt-3">

				<!-- Grid column -->
				<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

					<!-- Content -->
					<h6 class="text-uppercase font-weight-bold text-white">Company
						name</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<p>Here you can use rows and columns to organize your footer
						content. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

					<!-- Links -->
					<h6 class="text-uppercase font-weight-bold text-white">Products</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<p>
						<a href="#!">MDBootstrap</a>
					</p>
					<p>
						<a href="#!">MDWordPress</a>
					</p>
					<p>
						<a href="#!">BrandFlow</a>
					</p>
					<p>
						<a href="#!">Bootstrap Angular</a>
					</p>

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">

					<!-- Links -->
					<h6 class="text-uppercase font-weight-bold text-white">Useful
						links</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<p>
						<a href="#!">Your Account</a>
					</p>
					<p>
						<a href="#!">Become an Affiliate</a>
					</p>
					<p>
						<a href="#!">Shipping Rates</a>
					</p>
					<p>
						<a href="#!">Help</a>
					</p>

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">

					<!-- Links -->
					<h6 class="text-uppercase font-weight-bold text-white">Contact</h6>
					<hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto"
						style="width: 60px;">
					<p>
						<i class="fas fa-home mr-3"></i> New York, NY 10012, US
					</p>
					<p>
						<i class="fas fa-envelope mr-3"></i> info@example.com
					</p>
					<p>
						<i class="fas fa-phone mr-3"></i> + 01 234 567 88
					</p>
					<p>
						<i class="fas fa-print mr-3"></i> + 01 234 567 89
					</p>

				</div>
				<!-- Grid column -->

			</div>
			<!-- Grid row -->

		</div>
		<!-- Footer Links -->

		<!-- Copyright -->
		<div class="footer-copyright text-center py-3">
			© 2020 Copyright: <a href="https://mdbootstrap.com/">
				MDBootstrap.com</a>
		</div>
		<!-- Copyright -->

	</footer>
	<!-- Footer -->
</body>

</html>