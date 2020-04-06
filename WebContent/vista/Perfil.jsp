<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="modelo.pojo.Usuario"%>
<%@page session="false"%>
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
	<%
		Usuario user = (Usuario) request.getAttribute("usuario");
		if (user == null) {
			out.print("<header>");
			out.print("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark p-5\">");
			out.print("<a class=\"navbar-brand\" href=\"#\">Freak's Corner</a>");
			//<!-- 	<img src="img/logo1.png" width="300" height="250"> -->
			out.print(
					"<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
			out.print("<span class=\"navbar-toggler-icon\"></span>");
			out.print("</button>");
			out.print("<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
			out.print("<ul class=\"navbar-nav mr-auto\">");
			out.print("<li class=\"nav-item active\">");
			out.print("<a class=\"nav-link fas fa-home mr-3 text-white\" href=\"Main\"></a>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\"nav-link\" href=\"Registro\">Registrarse</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link\" href=\"Login\">Iniciar Sesión</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item dropdown\">");
			out.print(
					"<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categorías</a>");
			out.print("<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">");
			out.print("<a class=\"dropdown-item\" href=\"Login\">TOP 10|Juegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"Login\">Análisis de videojuegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"Guia\">Guías de videojuegos</a>");
			out.print("<div class=\"dropdown-divider\"></div>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Contacto</a>");
			out.print("</div>");
			out.print("</li>");
			out.print("<form class=\"form-inline ml-5\">");
			out.print("<div class=\"input-group\">");
			out.print("<div class=\"input-group-prepend\">");
			out.print(
					"<img src=\"img/usuari.jpg\" width=\"65\" height=\"55\" class=\"img-circle\">");
			out.print("</div>");
			out.print(
					"<input type=\"text\" readonly=\"readonly\"  disabled=\"disabled\" class=\"form-control mt-3 ml-2\" placeholder=\"Invitado\" aria-label=\"Username\" aria-describedby=\"basic-addon1\">");
			out.print("</div>");
			out.print("</form>");
			out.print("</div>");
			out.print("</nav>");
			out.print("</header>");
			out.print("<div class=\"container mt-5 p-5\">");
			out.print("<h1>¿Se a perdido la sesión? Vuelve a Iniciar sesión más tarde</h1>");
			out.print("<button type=\"button\" class=\"btn btn-outline-success\"><a href=\"Login\">Iniciar Sesión</a></button>");
			out.print("</div>");
		} else {
			out.print("<header>");
			out.print("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark p-5\">");
			out.print("<a class=\"navbar-brand\" href=\"#\">Freak's Corner</a>");
			//<!-- 	<img src="img/logo1.png" width="300" height="250"> -->
			out.print(
					"<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
			out.print("<span class=\"navbar-toggler-icon\"></span>");
			out.print("</button>");
			out.print("<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
			out.print("<ul class=\"navbar-nav mr-auto\">");
			out.print("<li class=\"nav-item active\">");
			out.print("<a class=\"nav-link fas fa-home mr-3 text-white\" href=\"Main\"></a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link\" href=\"Logout\">Cerrar Sesión</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item dropdown\">");
			out.print(
					"<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categorías</a>");
			out.print("<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">");
			out.print("<a class=\"dropdown-item\" href=\"#\">TOP 10|Juegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Análisis de videojuegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Guías de videojuegos</a>");
			out.print("<div class=\"dropdown-divider\"></div>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Contacto</a>");
			out.print("</div>");
			out.print("</li>");
			if(user.getAdministrador() == 1){
			// ----------------------------- ADMINISTRADOR
			out.print("<li class=\"nav-item dropdown\">");
			out.print(
					"<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Administrador</a>");
			out.print("<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">");
			out.print("<a class=\"dropdown-item\" href=\"Add\">Añadir ficha Juego</a>");
			out.print("<a class=\"dropdown-item\" href=\"Editar\">Editar ficha Juego</a>");
			out.print("<a class=\"dropdown-item\" href=\"Borrar\">Borrar ficha Juego</a>");
			out.print("<div class=\"dropdown-divider\"></div>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Añadir guía</a>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Editar guía</a>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Borrar guía</a>");
			out.print("<hr>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Añadir análisis</a>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Editar análisis</a>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Borrar análisis</a>");
			out.print("</div>");
			out.print("</li>");
			out.print("</ul>");
			}else{
			// -----------------------------
			out.print("</ul>");
			}
			out.print("<form class=\"form-inline ml-5\">");
			out.print("<div class=\"input-group\">");
			out.print("<div class=\"input-group-prepend\">");
			if (user.getFoto().equals("desconocido.txt")) {
				out.print(
						"<img src=\"img/usuari.jpg\" width=\"65\" height=\"55\" class=\"img-circle\">");
			} else {
				if (user.getFoto().matches(".+\\.(jpg|png)")){
					out.print("<img src=\"Imagenes/" + user.getFoto() + "\" width=\"60\" height=\"55\"/>");
				}
			}
			out.print("</div>");
			out.print(
					"<input type=\"text\" readonly=\"readonly\"  disabled=\"disabled\" class=\"form-control mt-3 ml-2 text-center\" placeholder=\""
							+ user.getUser() + "\" aria-label=\"Username\" aria-describedby=\"basic-addon1\">");
			out.print("</div>");
			out.print("</form>");
			out.print("</div>");
			out.print("</nav>");
			out.print("</header>");
			out.print("<div class=\"container mt-5 p-5\">"); //Empieza container
			out.print("<form class=\"needs-validation\" method=\"post\" action=\"UpdatePerfil\" enctype=\"multipart/form-data\">");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col-4\">");
			if (user.getFoto().equals("desconocido.txt")) {
				out.print(
						"<img src=\"img/usuari.jpg\" width=\"200\" height=\"150\" class=\"img-circle\">");
			} else {
				if (user.getFoto().matches(".+\\.(jpg|png)")){
					out.print("<img src=\"Imagenes/" + user.getFoto() + "\" width=\"200\" height=\"150\"/>");
				}
			}
			
			out.print("</div>");
			out.print("<div class=\"col-md-4\">");
			out.print("<input id=\"prodId\" name=\"id\" type=\"hidden\" value=\""+user.getId()+"\">");
			out.print("<h4>Nombre:</h4>");
			out.print("<p>"+user.getNombre()+"</p>");
			out.print("</div>");
			out.print("<div class=\"col-md-4\">");
			out.print("<h4>Fecha de creación de la cuenta:</h4>");
			out.print("<p>"+user.getFechaAlta()+"</p>");
			out.print("</div>");
			out.print("</div>"); //termina el div del 1º row
			out.print("<div class=\"row mt-3\">");
			out.print("<div class=\"col-md-4\">");
			out.print("<label for=\"exampleFormControlFile1\">Cambia la foto de perfil</label> <input type=\"file\" class=\"form-control-file\" id=\"exampleFormControlFile1\" name=\"foto\">");
			out.print("</div>");
			out.print("<div class=\"col-md-4 mb-3\">");
			out.print("<h5>Usuario:</h5>");
			out.print("<p>"+user.getUser()+"</p>");
			out.print("</div>");
			out.print("<div class=\"form-group col-md-4 mb-3\">");
			out.print("<h5>Email:</h5>");
			out.print("<p>"+user.getEmail()+"</p>");
			out.print("</div>");
			out.print("</div>");//termina el 2º row
			out.print("<div class=\"row mt-3\">");// 3º row
			out.print("<div class=\"col-4\">");
			out.print("<button type=\"submit\" class=\"btn btn-success\">Guardar foto</button>");
			out.print("</div>");
			out.print("</div>");//termina 3º row
			out.print("</form>");//termina el form
			out.print("<form class=\"needs-validation\" method=\"get\" action=\"UpdatePassPerfil\">");
			out.print("<input id=\"prodId\" name=\"id\" type=\"hidden\" value=\""+user.getId()+"\">");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col-md-4\">");
			out.print("</div>");
			out.print("<div class=\"col-md-4\">");
			out.print("</div>");
			out.print("<div class=\"col-md-4\">");
			out.print("<h5>Cambiar contraseña:</h5>");
			out.print("<input type=\"password\" class=\"form-control\" placeholder=\"Cambiar Contraseña\" name=\"password\">");
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
			out.print("</form>");
			out.print("<form class=\"needs-validation\" method=\"get\" action=\"EliminarCuenta\">");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col-8 mt-5\">");
			out.print("<button type=\"submit\" class=\"btn btn-danger\">Eliminar cuenta</button>");
			out.print("</div>");
			out.print("</div>");
			out.print("</form>");
			out.print("</div>");//termina el container
			
		}
	%>

</body>
</html>