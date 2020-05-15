<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="modelo.pojo.Usuario"%>
<%@page import="modelo.pojo.Genero"%>
<%@page import="modelo.pojo.Plataforma"%>
<%@page import="modelo.pojo.Juego"%>
<%@page import="modelo.pojo.Guia"%>
<%@page import="modelo.pojo.Analisis"%>
<%@page import="java.util.ArrayList"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freak's Corner</title>
<link rel="stylesheet" type="text/css" href="css/Style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

</head>
<body>
	<%
		Usuario user = (Usuario) request.getAttribute("usuario");
		ArrayList<Juego> juego = (ArrayList<Juego>) request.getAttribute("juego");
		ArrayList<Guia> guia = (ArrayList<Guia>) request.getAttribute("guia");
		ArrayList<Analisis> analisi = (ArrayList<Analisis>) request.getAttribute("analisi");
		ArrayList<Genero> genero = (ArrayList<Genero>) request.getAttribute("genero");
		ArrayList<Plataforma> plata = (ArrayList<Plataforma>) request.getAttribute("plataforma");

		if (user == null) {
			out.print("<header>");
			out.print("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark p-5\">");
			out.print("<img src=\"img/logo3.png\" width=\"100\" height=\"100\">"); 
			out.print(
					"<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
			out.print("<span class=\"navbar-toggler-icon\"></span>");
			out.print("</button>");
			out.print("<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
			out.print("<ul class=\"navbar-nav mr-auto\">");
			out.print("<li class=\"nav-item active\">");
			out.print("<a class=\"fa fa-home mr-3 text-white\" href=\"Main\"></a>");
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
			out.print("<a class=\"dropdown-item\" href=\"Top10\">TOP 10|Juegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"Analisis\">Análisis</a>");
			out.print("<a class=\"dropdown-item\" href=\"Guia\">Guías</a>");
			out.print("<a class=\"dropdown-item\" href=\"Comunidad\">Comunidad</a>");
			out.print("<div class=\"dropdown-divider\"></div>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Contacto</a>");
			out.print("</div>");
			out.print("</li>");
			out.print("</ul>");
			// 			out.print("<form class=\"form-inline my-2 my-lg-0 mr-5\">");
			// 			out.print(
			// 					"<input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Búsqueda\" aria-label=\"Search\">");
			// 			out.print("<button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\">Búsqueda</button>");
			// 			out.print("</form>");
			out.print("<form class=\"form-inline ml-5\">");
			out.print("<div class=\"input-group\">");
			out.print("<div class=\"input-group-prepend\">");
			out.print("<img src=\"img/usuari.jpg\" width=\"65\" height=\"55\" class=\"img-circle\">");
			out.print("</div>");
			out.print(
					"<input type=\"text\" readonly=\"readonly\"  disabled=\"disabled\" class=\"form-control mt-3 ml-2\" placeholder=\"Invitado\" aria-label=\"Username\" aria-describedby=\"basic-addon1\">");
			out.print("</div>");
			out.print("</form>");
			out.print("</div>");
			out.print("</nav>");
			//--------------------------------------------------------
			out.print("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">");
			out.print("<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
			out.print("<ul class=\"navbar-nav ml-5\">");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link\" href=\"Pc\">PC</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link\" href=\"Xbox\">Xbox One</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link\" href=\"PlayS\">Play Station 4</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link\" href=\"Nintendo\">Nintendo Switch</a>");
			out.print("</li>");
			out.print("</ul>");

			out.print("</header>");

			out.print("<div class=\"container p-5 mt-5\">");

			out.print("<div class=\"row\">"); //videos
			out.print("<div class=\"col\">");
			out.print("<h3></h3>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");//titulo
			out.print("<h3>Juegos</h3>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row\">");//lista
			out.print("<div class=\"col\">");

			for (Juego j : juego) {
				out.print("<div class=\"shadow-sm p-3 mb-5 bg-white rounded\">");

				out.print("<table>");
				out.print("<tr>");
				out.print("<td>" + j.getTitulo() + "</td>");
				for (Genero g : genero) {
					if (j.getGenero() == g.getId()) {
						out.print("<td>" + g.getNombre() + "</td>");
					}
				}
				for (Plataforma p : plata) {
					if (j.getPlataforma() == p.getId()) {
						out.print("<td>" + p.getNombre() + "</td>");
					}
				}
				out.print("<table>");
				out.print("</tr>");
				out.print("</table>");

				out.print("</div>");

			}
			out.print("</div>");
			out.print("</div>");

			//--------------------------------------------------------------

			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");//titulo
			out.print("<h3>Guías</h3>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row\">");//lista
			out.print("<div class=\"col\">");

			for (Guia g : guia) {
				out.print("<div class=\"shadow-sm p-3 mb-5 bg-white rounded\">");

				out.print("<table>");
				out.print("<tr>");
				out.print("<td>" + g.getTitulo() + "</td>");
				out.print("<table>");
				out.print("</tr>");
				out.print("</table>");

				out.print("</div>");
			}

			out.print("</div>");
			out.print("</div>");

			//-----------------------------------------------------------------------

			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");//titulo
			out.print("<h3>Análisis</h3>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row\">");//lista
			out.print("<div class=\"col\">");

			for (Analisis a : analisi) {
				out.print("<div class=\"shadow-sm p-3 mb-5 bg-white rounded\">");

				out.print("<table>");
				out.print("<tr>");
				out.print("<td>" + a.getTitulo() + "</td>");
				out.print("<table>");
				out.print("</tr>");
				out.print("</table>");

				out.print("</div>");
			}

			out.print("</div>");
			out.print("</div>");

			out.print("</div>"); //div container

		} else {
			out.print("<header>");
			out.print("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark p-5\">");
			out.print("<a class=\"navbar-brand\" href=\"#\">Freak's Corner</a>");
			out.print("<img src=\"img/logo1.png\" width=\"300\" height=\"250\">"); 
			out.print(
					"<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
			out.print("<span class=\"navbar-toggler-icon\"></span>");
			out.print("</button>");
			out.print("<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
			out.print("<ul class=\"navbar-nav mr-auto\">");
			out.print("<li class=\"nav-item active\">");
			out.print("<a class=\"fa fa-home mr-3 text-white\" href=\"Main\"></a>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\"nav-link\" href=\"Logout\">Cerrar Sesión</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link\" href=\"Perfil\">Perfil</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item dropdown\">");
			out.print(
					"<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categorías</a>");
			out.print("<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">");
			out.print("<a class=\"dropdown-item\" href=\"Top10\">TOP 10|Juegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"Analisis\">Análisis</a>");
			out.print("<a class=\"dropdown-item\" href=\"Guia\">Guías</a>");
			out.print("<a class=\"dropdown-item\" href=\"Comunidad\">Comunidad</a>");
			out.print("<div class=\"dropdown-divider\"></div>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Contacto</a>");
			out.print("</div>");
			out.print("</li>");
			out.print("</ul>");
			// 			out.print("<form method=\"post\" action=\"Main\" class=\"form-inline my-2 my-lg-0 mr-5\">");
			// 			out.print(
			// 					"<input class=\"form-control mr-sm-2\" name=\"busca\" type=\"search\" placeholder=\"Búsqueda\" aria-label=\"Search\">");
			// 			out.print("<button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\">Búsqueda</button>");
			// 			out.print("</form>");
			out.print("<form class=\"form-inline ml-5\">");
			out.print("<div class=\"input-group\">");
			out.print("<div class=\"input-group-prepend\">");
			if (user.getFoto().equals("desconocido.txt")) {
				out.print("<img src=\"img/usuari.png\" width=\"65\" height=\"55\" class=\"img-circle\">");
			} else {
				if (user.getFoto().matches(".+\\.(jpg|png)")) {
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

			//--------------------------------------------------------
			out.print("<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">");
			out.print("<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
			out.print("<ul class=\"navbar-nav ml-5\">");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link\" href=\"Pc\">PC</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link\" href=\"Xbox\">Xbox One</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link\" href=\"PlayS\">Play Station 4</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link\" href=\"Nintendo\">Nintendo Switch</a>");
			out.print("</li>");
			out.print("</ul>");

			out.print("</header>");

			out.print("<div class=\"container p-5 mt-5\">");

			out.print("<div class=\"row\">"); //videos
			out.print("<div class=\"col\">");
			out.print("<h3></h3>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");//titulo
			out.print("<h3>Juegos</h3>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row\">");//lista
			out.print("<div class=\"col\">");
			if (user.getAdministrador() == 1) {
				for (Juego j : juego) {
					out.print("<div class=\"shadow-sm p-3 mb-5 bg-white rounded\">");

					out.print("<table>");
					out.print("<tr>");
					out.print("<td>" + j.getTitulo() + "</td>");
					for (Genero g : genero) {
						if (j.getGenero() == g.getId()) {
							out.print("<td>" + g.getNombre() + "</td>");
						}
					}
					for (Plataforma p : plata) {
						if (j.getPlataforma() == p.getId()) {
							out.print("<td>" + p.getNombre() + "</td>");
						}
					}
					out.print("<table>");
					out.print("</tr>");
					out.print("</table>");

					out.print("</div>");
				}
			} else {
				for (Juego j : juego) {
					out.print("<div class=\"shadow-sm p-3 mb-5 bg-white rounded\">");

					out.print("<table>");
					out.print("<tr>");
					out.print("<td>" + j.getTitulo() + "</td>");
					for (Genero g : genero) {
						if (j.getGenero() == g.getId()) {
							out.print("<td>" + g.getNombre() + "</td>");
						}
					}
					for (Plataforma p : plata) {
						if (j.getPlataforma() == p.getId()) {
							out.print("<td>" + p.getNombre() + "</td>");
						}
					}
					out.print("<table>");
					out.print("</tr>");
					out.print("</table>");

					out.print("</div>");
				}
			}
			out.print("</div>");
			out.print("</div>");

			//--------------------------------------------------------------

			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");//titulo
			out.print("<h3>Guías</h3>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row\">");//lista
			out.print("<div class=\"col\">");
			if (user.getAdministrador() == 1) {
				for (Guia g : guia) {
					out.print("<div class=\"shadow-sm p-3 mb-5 bg-white rounded\">");

					out.print("<table>");
					out.print("<tr>");
					out.print("<td>" + g.getTitulo() + "</td>");
					out.print("<table>");
					out.print("</tr>");
					out.print("</table>");

					out.print("</div>");
				}
			} else {
				for (Guia g : guia) {
					out.print("<div class=\"shadow-sm p-3 mb-5 bg-white rounded\">");

					out.print("<table>");
					out.print("<tr>");
					out.print("<td>" + g.getTitulo() + "</td>");
					out.print("<table>");
					out.print("</tr>");
					out.print("</table>");

					out.print("</div>");
				}
			}
			out.print("</div>");
			out.print("</div>");

			//-----------------------------------------------------------------------

			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");//titulo
			out.print("<h3>Análisis</h3>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row\">");//lista
			out.print("<div class=\"col\">");
			if (user.getAdministrador() == 1) {
				for (Analisis a : analisi) {
					out.print("<div class=\"shadow-sm p-3 mb-5 bg-white rounded\">");

					out.print("<table>");
					out.print("<tr>");
					out.print("<td>" + a.getTitulo() + "</td>");
					out.print("<table>");
					out.print("</tr>");
					out.print("</table>");

					out.print("</div>");
				}
			} else {
				for (Analisis a : analisi) {
					out.print("<div class=\"shadow-sm p-3 mb-5 bg-white rounded\">");

					out.print("<table>");
					out.print("<tr>");
					out.print("<td>" + a.getTitulo() + "</td>");
					out.print("<table>");
					out.print("</tr>");
					out.print("</table>");

					out.print("</div>");
				}
			}
			out.print("</div>");
			out.print("</div>");

			out.print("</div>"); //div container

		}
	%>
	<div class="footer bg-dark">
		<div class="text-center center-block p-5">
			<a href="#" class="fa fa-facebook"></a> 
			<a href="#" class="fa fa-twitter"></a>
			<a href="#" class="fa fa-instagram"></a>
			<a href="#" class="fa fa-tumblr"></a>
		</div>
			<div class="footer-copyright text-center py-3 bg-success">© 2020 Copyright: <a class="text-white" href="https://Freak'sCorner.com/">Freak'sCorner.com</a>
		</div>
	</div>
</body>
</html>