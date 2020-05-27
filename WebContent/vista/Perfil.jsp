<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="modelo.pojo.Usuario"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freak's Corner</title>
<link href="img/logo4.png" rel="icon" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/Style.css">
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
		Usuario user = (Usuario) request.getAttribute("usuario");

		if (user == null) {
			out.print("<header>");
			out.print("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">");
			out.print("<img src=\"img/logo4.png\" width=\"200\" height=\"200\">");
			out.print(
					"<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
			out.print("<span class=\"navbar-toggler-icon\"></span>");
			out.print("</button>");
			out.print("<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
			out.print("<ul class=\"navbar-nav mr-auto\">");
			out.print("<li class=\"nav-item active\">");
			out.print("<a class=\"h nav-link text-white p-4\" href=\"Main\">Inicio</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\" nav-link text-white p-4\" href=\"Registro\">Registrarse</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\" nav-link text-white p-4\" href=\"Login\">Iniciar Sesión</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item dropdown\">");
			out.print(
					"<a class=\"nav-link dropdown-toggle p-4\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categorías</a>");
			out.print("<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">");
			out.print("<a class=\"dropdown-item\" href=\"Top10\">TOP 10 | Juegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"Analisis\">Análisis</a>");
			out.print("<a class=\"dropdown-item\" href=\"Guia\">Guías</a>");
			out.print("<div class=\"dropdown-divider\"></div>");
			out.print("<a class=\"dropdown-item\" href=\"Comunidad\">Comunidad</a>");
			out.print("</div>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\"nav-link text-white p-4\" href=\"Contacto\">Contacto</a>");
			out.print("</li>");
			out.print("</ul>");
			out.print("<form class=\"form-inline ml-5\">");
			out.print("<div class=\"input-group\">");
			out.print("<div class=\"input-group-prepend\">");
			out.print("<img src=\"img/usuari.png\" width=\"100\" height=\"65\" class=\"img-circle\">");
			out.print("</div>");
			out.print(
					"<input type=\"text\" readonly=\"readonly\"  disabled=\"disabled\" class=\"form-control mt-3 ml-2\" placeholder=\"Invitado\" aria-label=\"Username\" aria-describedby=\"basic-addon1\" id=\"us\">");
			out.print("</div>");
			out.print("</form>");
			out.print("</div>");
			out.print("</nav>");
			out.print("</header>");

			//container
			out.print("<div class=\"container mt-5 p-5\">");
			out.print("<h1>¿Se a perdido la sesión? Vuelve a Iniciar sesión más tarde</h1>");
			out.print(
					"<button type=\"button\" class=\"btn btn-outline-success\"><a href=\"Login\">Iniciar Sesión</a></button>");

			//fin container
			out.print("</div>");

			//sino que muestre una vista de usuario logeado
		} else {
			out.print("<header>");
			out.print("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">");
			out.print("<img src=\"img/logo4.png\" width=\"200\" height=\"200\">");
			out.print(
					"<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
			out.print("<span class=\"navbar-toggler-icon\"></span>");
			out.print("</button>");
			out.print("<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
			out.print("<ul class=\"navbar-nav mr-auto\">");
			out.print("<li class=\"nav-item active\">");
			out.print("<a class=\"h nav-link text-white p-4\" href=\"Main\">Inicio</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item dropdown\">");
			out.print(
					"<a class=\"nav-link dropdown-toggle p-4\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categorías</a>");
			out.print("<div class=\"dropdown-menu \" aria-labelledby=\"navbarDropdown\">");
			out.print("<a class=\"dropdown-item\" href=\"Analisis\">Análisis</a>");
			out.print("<a class=\"dropdown-item\" href=\"Guia\">Guías</a>");
			out.print("<div class=\"dropdown-divider\"></div>");
			out.print("<a class=\"dropdown-item\" href=\"Top10\">TOP 10 | Juegos</a>");
			out.print("</div>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\"nav-link text-white p-4\" href=\"Comunidad\">Comunidad</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\"nav-link text-white p-4\" href=\"Contacto\">Contacto</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item dropdown\">");

			//si el usuario tiene como administrador = 1
			if (user.getAdministrador() == 1) {

				//muestre los poderes del administrador
				out.print(
						"<a class=\"nav-link dropdown-toggle ml-5 p-4\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Administrador</a>");
				out.print("<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">");
				out.print("<a class=\"dropdown-item\" href=\"Add\">Añadir juego</a>");
				out.print("<a class=\"dropdown-item\" href=\"Editar?id=" + user.getId() + "\">Editar juego</a>");
				out.print("<a class=\"dropdown-item\" href=\"Borrar?id=" + user.getId() + "\">Borrar juego</a>");
				out.print("<div class=\"dropdown-divider\"></div>");
				out.print("<a class=\"dropdown-item\" href=\"AddGuia\">Añadir guía</a>");
				out.print("<a class=\"dropdown-item\" href=\"EditarListaGuia?id=" + user.getId()
						+ "\">Editar guía</a>");
				out.print("<a class=\"dropdown-item\" href=\"BorrarListaGuia?id=" + user.getId()
						+ "\">Borrar guia</a>");
				out.print("<div class=\"dropdown-divider\"></div>");
				out.print("<a class=\"dropdown-item\" href=\"AddAnalisis\">Añadir análisis</a>");
				out.print("<a class=\"dropdown-item\" href=\"EditarListaAnalisis?id=" + user.getId()
						+ "\">Editar análisis</a>");
				out.print("<a class=\"dropdown-item\" href=\"BorrarListaAnalisis?id=" + user.getId()
						+ "\">Borrar análisis</a>");
				out.print("</div>");
				out.print("</li>");
			}
			out.print("</ul>");
			out.print("<form class=\"form-inline ml-5\">");
			out.print("<div class=\"input-group\">");
			out.print("<div class=\"input-group-prepend\">");
			if (user.getFoto().equals("desconocido.txt")) {
				out.print("<img src=\"img/usuari.png\" width=\"100\" height=\"65\" class=\"img-circle\">");
			} else {
				if (user.getFoto().matches(".+\\.(jpg|png)")) {
					out.print("<img src=\"Imagenes/" + user.getFoto()
							+ "\" width=\"95\" height=\"65\" class=\"rounded-circle mr-4\"/>");
				}
			}
			out.print("</div>");
			out.print("<h5 id=\"us1\" class=\"mt-4\">" + user.getUser() + "</h5>");
			out.print("</div>");

			out.print("<ul class=\"ad navbar-nav\">");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\"nav-link text-white\" href=\"Perfil\">Cuenta</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\"nav-link text-white\" href=\"Logout\">Cerrar Sesión</a>");
			out.print("</li>");
			out.print("</ul>");
			out.print("</div>");
			out.print("</form>");
			out.print("</nav>");
			out.print("</header>");

			//container
			out.print("<div class=\"container mt-5 p-5\">");

			//form para actualizar foto perfil
			out.print(
					"<form class=\"needs-validation\" method=\"post\" action=\"UpdatePerfil\" enctype=\"multipart/form-data\">");

			out.print("<div class=\"row\">");
			out.print("<div class=\"col-4\">");

			//si foto es igual desconocido que se ponga uno por defecto
			//sino que coja el del usuario
			if (user.getFoto().equals("desconocido.txt")) {
				out.print("<img src=\"img/usuari.png\" width=\"250\" height=\"150\" class=\"img-circle\">");
			} else {
				if (user.getFoto().matches(".+\\.(jpg|png)")) {
					out.print("<img src=\"Imagenes/" + user.getFoto() + "\" width=\"200\" height=\"150\"/>");
				}
			}

			out.print("</div>");

			out.print("<div class=\"col-md-4\">");
			out.print("<input id=\"prodId\" name=\"id\" type=\"hidden\" value=\"" + user.getId() + "\">");
			out.print("<h4>Nombre:</h4>");
			out.print("<p>" + user.getNombre() + "</p>");
			out.print("</div>");

			out.print("<div class=\"col-md-4\">");
			out.print("<h4>Fecha de creación de la cuenta:</h4>");
			out.print("<p>" + user.getFechaAlta() + "</p>");
			out.print("</div>");
			out.print("</div>"); //termina el div del 1º row

			out.print("<div class=\"row mt-3\">");
			out.print("<div class=\"col-md-4\">");
			out.print(
					"<label for=\"exampleFormControlFile1\">Cambia la foto de perfil</label> <input type=\"file\" class=\"form-control-file\" id=\"exampleFormControlFile1\" name=\"foto\">");
			out.print("</div>");

			out.print("<div class=\"col-md-4 mb-3\">");
			out.print("<h5>Usuario:</h5>");
			out.print("<p>" + user.getUser() + "</p>");
			out.print("</div>");

			out.print("<div class=\"form-group col-md-4 mb-3\">");
			out.print("<h5>Email:</h5>");
			out.print("<p>" + user.getEmail() + "</p>");
			out.print("</div>");
			out.print("</div>");//termina el 2º row

			out.print("<div class=\"row mt-3\">");// 3º row
			out.print("<div class=\"col-4\">");
			out.print("<button type=\"submit\" class=\"btn btn-success\">Guardar foto</button>");
			out.print("</div>");
			out.print("</div>");//termina 3º row

			//termina el form
			out.print("</form>");

			//form para actualizar la contraseña del usuario
			out.print("<form class=\"needs-validation\" method=\"get\" action=\"UpdatePassPerfil\">");

			out.print("<input id=\"prodId\" name=\"id\" type=\"hidden\" value=\"" + user.getId() + "\">");

			out.print("<div class=\"row\">");
			out.print("<div class=\"col-md-4\">");
			out.print("</div>");
			out.print("<div class=\"col-md-4\">");
			out.print("</div>");
			out.print("<div class=\"col-md-4\">");
			out.print("<h5>Cambiar contraseña:</h5>");
			out.print(
					"<input type=\"password\" class=\"form-control\" placeholder=\"Cambiar contraseña\" name=\"password\">");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row\">");
			out.print("<div class=\"col-md-4\">");
			out.print("</div>");
			out.print("<div class=\"col-md-4\">");
			out.print("</div>");
			out.print("<div class=\"col-md-4 mt-2\">");
			out.print("<button type=\"submit\" class=\"btn btn-info\">Cambiar contraseña</button>");
			out.print("</div>");
			out.print("</div>");

			//termian form
			out.print("</form>");

			//form para borrar la cuenta
			out.print("<form class=\"needs-validation\" method=\"get\" action=\"EliminarCuenta\">");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col-8 mt-5\">");
			out.print("<button type=\"submit\" class=\"btn btn-danger\">Eliminar cuenta</button>");
			out.print("</div>");
			out.print("</div>");
			out.print("</form>");

			//termina el container
			out.print("</div>");

		}
	%>
	<div class="footer bg-dark">
		<div class="footer-copyright text-center py-3 bg-success">
			© 2020 Copyright: <a class="text-white"
				href="https://Freak'sCorner.com/">Freak'sCorner.com</a>
		</div>
	</div>
</body>
</html>