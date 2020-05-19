<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'>
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
<body onload="myFunction()">
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
				<li class="nav-item active"><a class="h nav-link text-white"
					href="Main">Inicio</a></li>
				<li class="nav-item"><a class=" nav-link text-white"
					href="Registro">Registrarse</a></li>
				<li class="nav-item"><a class=" nav-link text-white"
					href="Login">Iniciar Sesión</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">Categorías</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="Top10">TOP 10 | Juegos</a> <a
							class="dropdown-item" href="Analisis">Análisis</a> <a
							class="dropdown-item" href="Guia">Guías</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="Comunidad">Comunidad</a>
					</div></li>
				<li class="nav-item"><a class="nav-link text-white"
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


	<div class='container p-5 mt-5 mb-5'>

		<div class="row">
			<div class="col">
				<h2>Crea una cuenta</h2>
			</div>
		</div>
		<form method="post" action="Registro" enctype="multipart/form-data">
			<div class="form-row mt-3">
				<div class="col-4 mb-3">
					<label>*Usuario</label>
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text">@</span>
						</div>
						<input type="text" class="form-control" placeholder="Usuario"
							aria-describedby="validationTooltipUsernamePrepend" name="user" id="e"
							required>
					</div>
				</div>
				<div class="col-4 mb-3">
					<label>*Contraseña:</label> <input type="password"
						class="form-control " placeholder="Contraseña" name="pass" id="pass"
						required>
				</div>

				<div class="col-md-8 mb-3">
					<label>*Repite la contraseña:</label> <input type="password"
						class="form-control w-50" placeholder="Contraseña" id="passR"
						required>
				</div>
			</div>
			<hr>
			<div class="form-row">
				<div class="col-md-4 mb-3">
					<label>*Nombre:</label> <input type="text" class="form-control" id="e"
						placeholder="Nombre" name="nom" required>
				</div>


				<div class="col-md-4 mb-3">
					<label>*Email:</label> <input type="email" class="form-control" id="e"
						placeholder="name@example.com" name="email" >
						
				</div>

			</div>

			<div class="form-row mb-3 mt-3">
				<div class="col-md-4">
					<label>Escoge la foto de perfil</label> <input type="file"
						class="form-control-file" name="foto">
				</div>
			</div>

			<input type="checkbox" id="box2" class="mr-3 mt-5">
			<!-- Button trigger modal -->
			<button type="button"  class="btn btn-primary " data-toggle="modal" id="condiciones" data-target="#exampleModalCenter">Acepto las condiciones</button>

			<!-- Modal -->
			<div class="modal fade" id="exampleModalCenter" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalCenterTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered modal-lg"
					role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle">Ley de
								protección de datos</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<pre>
Freak's Corner está especialmente sensibilizada en la protección de los datos de los USUARIOS de los servicios a los que se accede a través de su web. 
Mediante la presente Política de Privacidad (en adelante , la Política) Freak's Corner informa a los USUARIOS del sitio web: 
datos del tratamiento y usos a los que se someten los datos de carácter personal que se recaban en la web, con el fin de que decidan, 
libre y voluntariamente, si desean facilitar la información solicitada.

Freak's Corner se reserva la facultad de modificar esta Política con el objeto de adaptarla a novedades legislativas, 
criterios jurisprudenciales, prácticas del sector, o intereses de la entidad. 
Cualquier modificación en la misma será anunciada con la debida antelación, 
a fin de que tengas perfecto conocimiento de su contenido.

Ciertos servicios prestados en el portal pueden contener condiciones particulares con 
previsiones en materia de protección de Datos Personales. 
De ellos puedes informarte en los correspondientes apartados.

<p class="titu">TITULARIDAD DEL TRATAMIENTO</p>
En dichos supuestos, los datos recabados por Freak's Corner serán incorporados a ficheros titularidad de Freak's Corner, 
debidamente inscritos en el Registro General de Protección de Datos.

<p class="titu">USOS Y FINALIDADES</p>
La finalidad de la recogida y tratamiento de los datos personales es la gestión, 
prestación y personalización de los servicios y contenidos del mismo que el USUARIO utilice y de la cual se informará en cada apartado.

<p class="titu">COMUNICACIÓN DE LOS DATOS</p>
Los datos recabados a través de la web sólo serán cedidos en aquellos casos en que expresamente se informe de ello al USUARIO.

<p class="titu">ACTUALIZACIÓN DE LOS DATOS</p>
Con el fin de que los datos obrantes en nuestras bases de datos siempre correspondan a tu situación real deberás mantenerlos actualizados,
 bien actualizándolos tú directamente en los caso en que ello sea posible bien comunicándolo al departamento correspondiente.

<p class="titu">UTILIZACIÓN DE COOKIES</p>
Con el objeto de proteger la intimidad de los usuarios de su página web Freak's Corner no emplea cookies cuando los mismos navegan por la misma.

<p class="titu">SEGURIDAD DE LOS DATOS</p>
Freak's Corner ha adoptado en su sistema de información las medidas técnicas y organizativas legalmente requeridas, 
a fin de garantizar la seguridad y confidencialidad de los datos almacenados, evitando así, en la medida de lo posible, 
su alteración, pérdida, tratamiento o acceso no autorizado.

<p class="titu">DERECHOS DE LOS USUARIOS</p>
En todo caso podrás acceder a tus datos, rectificarlos, cancelarlos y en su caso, oponerte a su tratamiento:
a) bien mediante solicitud acompañada de una fotocopia de tu D.N.I., remitida a la siguiente dirección postal: 
Freak's Corner . c/Plaza españa, C.P. 07180 - Palma de mallorca
b) bien mandando un e-mail a la siguiente dirección de correo electrónico: freaksCorner@gmail.com

Mas información en la Agencia Española de Protección de Datos:

<a href="http://www.agpd.es/portalwebAGPD/index-ides-idphp.php">Portal web de la ley de protección de datos</a></pre>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								data-dismiss="modal" id="condiciones" onclick="pres()">Acepto</button>
							
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-5">
				<div class="col-4">
					<button type="submit" class="btn btn-success" id="registro" onclick="validar()">Registrarse</button>
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