<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="modelo.pojo.Usuario"%>
<%@page import="modelo.pojo.Genero"%>
<%@page import="modelo.pojo.Plataforma"%>
<%@page import="java.util.ArrayList"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freak's Corner</title>
<link href="img/logo4.png" rel="icon" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/Style.css">
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
<script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
<script type="text/javascript" src="js/Fichas.js"></script>

</head>
<body onload="editor()">

	<%
		Usuario user = (Usuario) request.getAttribute("usuario");
		ArrayList<Genero> juegoList = (ArrayList<Genero>) request.getAttribute("listaJuego");
		ArrayList<Plataforma> juegoListP = (ArrayList<Plataforma>) request.getAttribute("plataforma");

		//Usuario es nulo que muestre un header de invitado
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
			out.print("<div class=\"container mt-5 p-5\">"); //Empieza container
			out.print("<h3>Se ha perdido la sesión</h3>");
			out.print("</div>");
			
		//sino que muestre una vista con el usuario logeado
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
			out.print("<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">");
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
			
			//si el usuario tiene como administrador = 1, muestre los poderes de administrador
			if (user.getAdministrador() == 1) {
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
			
			//si la foto es igual a desconocido que muestre una foto por defecto
			if (user.getFoto().equals("desconocido.txt")) {
				out.print("<img src=\"img/usuari.png\" width=\"100\" height=\"65\" class=\"img-circle\">");
			
			//sino que muestre la foto que tiene el usuario escogida
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

			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
			out.print("<h3>Añade un juego a la lista</h3>");
			out.print("</div>");
			out.print("</div>");

			// 2 row
			out.print(
					"<form class=\"needs-validation\" method=\"post\" action=\"Add\" enctype=\"multipart/form-data\">");

			out.print("<div class=\"form-row mt-5\">");

			out.print("<div class=\"col-md-4\">");
			out.print("Título");
			out.print(
					"<input class=\"form-control\" type=\"text\" placeholder=\"Título\" name=\"titulo\" required>");
			out.print("</div>");

			out.print("<div class=\"col-md-4\">");
			out.print("Año del juego");
			out.print("<input class=\"form-control\" type=\"number\" placeholder=\"Año\" name=\"anyo\" required>");
			out.print("</div>");
			out.print("</div>");

			//3 row
			out.print("<div class=\"form-row mt-3\">");

			out.print("<div class=\"col-md-4\">");
			out.print("<div class=\"form-group\">");
			out.print("<label for=\"Select1\">Género</label>");

			out.print("<select class=\"form-control\" id=\"Select1\" name=\"gen\" required>");
					
		   //for para coger la lista de generos
			for (Genero j : juegoList) {
				out.print("<option value=\"" + j.getId() + "\">" + j.getNombre() + "</option>");
			}
			out.print("</select>");

			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"col-md-4\">");
			out.print("<div class=\"form-group\">");
			out.print("<label for=\"Select2\">Plataforma</label>");
			out.print("<select class=\"form-control\" id=\"Select2\" name=\"pla\" required>");
			
		    //for para coger la lista de plataformas
			for (Plataforma j2 : juegoListP) {
				out.print("<option value=\"" + j2.getId() + "\">" + j2.getNombre() + "</option>");
			}
			out.print("</select>");
			out.print("</div>");

			out.print("</div>");
			out.print("</div>");

			//4 row
			out.print("<div class=\"form-row mt-2\">");
			out.print("<div class=\"col\">");
			out.print("<div class=\"form-group\">");
			out.print("Descripción del juego");
			out.print(
					"<textarea  class=\"form-control\" id=\"editor1\" rows=\"1\" cols=\"40\" name=\"desc\" required></textarea>");
			out.print("</div>");
			out.print("</div>");
			out.print("</div>");

			// 5 row
			out.print("<div class=\"form-row\">");
			out.print("<div class=\"col-md-4\">");
			out.print("<label for=\"exampleFormControlFile1\">Sube una foto para el juego</label>");
			out.print(
					"<input type=\"file\" class=\"form-control-file\" id=\"exampleFormControlFile1\" name=\"foto\" required>");
			out.print("</div>");
			out.print("<input class=\"form-control\" type=\"hidden\" value=\"" + user.getId() + "\" name=\"id\">");
			out.print("</div>");
			out.print("<div class=\"form-row mt-5\">");
			out.print("<div class=\"col-md-4\">");
			out.print("<button type=\"submit\" class=\"btn btn-success\">Subir ficha a la lista</button>");
			out.print("</div>");
			out.print("</div>");

			//FIN del formulario para añadir juego
			out.print("</form>"); 

			//container FIN
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