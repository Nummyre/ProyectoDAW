<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="modelo.pojo.Usuario"%>
<%@page import="modelo.pojo.Genero"%>
<%@page import="modelo.pojo.Plataforma"%>
<%@page import="modelo.pojo.Juego"%>
<%@page import="modelo.pojo.Guia"%>
<%@page import="modelo.pojo.Foto"%>
<%@page import="modelo.pojo.Analisis"%>
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

<!-- jQuery first, then Popper.js, then Bootstrap JS -->

</head>
<body class="cuerpo">
	<%
		Usuario user = (Usuario) request.getAttribute("usuario");
		ArrayList<Juego> juego = (ArrayList<Juego>) request.getAttribute("juego");
		ArrayList<Guia> guia = (ArrayList<Guia>) request.getAttribute("guia");
		ArrayList<Analisis> analisi = (ArrayList<Analisis>) request.getAttribute("analisi");
		ArrayList<Genero> genero = (ArrayList<Genero>) request.getAttribute("genero");
		ArrayList<Plataforma> plata = (ArrayList<Plataforma>) request.getAttribute("plataforma");

		ArrayList<Foto> juegoFoto = (ArrayList<Foto>) request.getAttribute("juegoFoto");
		ArrayList<Foto> guiaFoto = (ArrayList<Foto>) request.getAttribute("guiaFoto");
		ArrayList<Foto> analisisFoto = (ArrayList<Foto>) request.getAttribute("analisisFoto");

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
			out.print("<a class=\"h nav-link text-white\" href=\"Main\">Inicio</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\" nav-link text-white\" href=\"Registro\">Registrarse</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\" nav-link text-white\" href=\"Login\">Iniciar Sesión</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item dropdown\">");
			out.print(
					"<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categorías</a>");
			out.print("<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">");
			out.print("<a class=\"dropdown-item\" href=\"Top10\">TOP 10 | Juegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"Analisis\">Análisis</a>");
			out.print("<a class=\"dropdown-item\" href=\"Guia\">Guías</a>");
			out.print("<div class=\"dropdown-divider\"></div>");
			out.print("<a class=\"dropdown-item\" href=\"Comunidad\">Comunidad</a>");
			out.print("</div>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\"nav-link text-white\" href=\"Contacto\">Contacto</a>");
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
			//--------------------------------------------------------
			out.print("<nav class=\"navbar navbar-expand-lg navbar-dark bg-success\">");
			out.print("<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
			out.print("<ul class=\"navbar-nav ml-5\">");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"Pc\">PC</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"Xbox\">Xbox One</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"PlayS\">Play Station 4</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"Nintendo\">Nintendo Switch</a>");
			out.print("</li>");
			out.print("</ul>");

			out.print("</header>");

			out.print("<div class=\"container p-5\">");

			out.print("<div id=\"carousel\" class=\"carousel slide\" data-ride=\"carousel\">");
			out.print("<ol class=\"carousel-indicators\">");
			out.print("<li data-target=\"#carousel\" data-slide-to=\"0\" class=\"active\"></li>");
			out.print("<li data-target=\"#carousel\" data-slide-to=\"1\" ></li>");
			out.print("<li data-target=\"#carousel\" data-slide-to=\"2\" ></li>");
			out.print("</ol>");
			out.print("<div class=\"carousel-inner\">");
			out.print("<div class=\"carousel-item active\">");
			out.print("<a href=\"Analisis\"><img class=\"d-block w-100\" src=\"img/foto7.jpg\" width=\"100\" height=\"500\" alt=\"First slide\"></a>");
			out.print("<div class=\"carousel-caption d-none d-md-block\">");
			out.print("<h5>Análisis</h5>");
			out.print("<p>¡Explora los videojuegos con nuestros análisis!</p>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"carousel-item \">");
			out.print("<a href=\"Guia\"><img class=\"d-block w-100\" src=\"img/fo3.jpg\" width=\"100\" height=\"500\" alt=\"Second slide\"></a>");
			out.print("<div class=\"carousel-caption d-none d-md-block\">");
			out.print("<h5 class=\"text-dark font-weight\">Guías</h5>");
			out.print("<p class=\"text-dark\">¡Ayúdate con nuestras guías!</p>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"carousel-item \">");
			out.print("<a href=\"Top10\"><img class=\"d-block w-100\" src=\"img/foto2.jpg\" width=\"100\" height=\"500\" alt=\"tercero slide\"></a>");
			out.print("<div class=\"carousel-caption d-none d-md-block\">");
			out.print("<h5>Top 10</h5>");
			out.print("<p>¡Entérate que videojuegos están a la última!</p>");
			out.print("</div>");
			out.print("</div>");

			out.print("<a class=\"carousel-control-prev\" href=\"#carousel\" role=\"button\" data-slide=\"prev\">");
			out.print("<span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>");
			out.print("<span class=\"sr-only\">Previous</span>");
			out.print("</a>");

			out.print("<a class=\"carousel-control-next\" href=\"#carousel\" role=\"button\" data-slide=\"next\">");
			out.print("<span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>");
			out.print("<span class=\"sr-only\">Next</span>");
			out.print("</a>");

			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row mt-5\">");
			out.print("<div class=\"col\">");//titulo
			out.print("<h3>Juegos</h3>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row\">");//lista
			out.print("<div class=\"col\">");
			if (juego != null) {
				for (Juego j : juego) {
					out.print("<div class=\"shadow-lg p-3 mb-5 bg-white rounded w-75\">");
					out.print("<table>");
					out.print("<tr>");
					out.print("<th></th>");
					out.print("<th>Título</th>");
					out.print("<th>Género</th>");
					out.print("<th>Plataforma</th>");
					out.print("<tr>");
					out.print("<tr>");
					for (Foto fj : juegoFoto) {
						if (fj.getIdJuego() == j.getId()) {
							out.print("<td><img src=\"Imagenes/" + fj.getFoto()
									+ "\" width=\"100\" height=\"65\" class=\"img-circle\"></td>");
						}
					}
					out.print("<td><a class=\"e\" href=\"FichaJuego?id=" + j.getId() + "\">" + j.getTitulo()
							+ "</a></td>");
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
			if (guia != null) {
				for (Guia g : guia) {
					out.print("<div class=\"shadow-lg p-3 mb-5 bg-white rounded w-75\">");

					out.print("<table>");
					out.print("<tr>");
					for (Foto fg : guiaFoto) {
						if (fg.getIdJuego() == g.getId()) {
							out.print("<td><img src=\"Imagenes/" + fg.getFoto()
									+ "\" width=\"100\" height=\"65\" class=\"img-circle\"></td>");
						}
					}
					out.print("<td><a class=\"e\" href=\"FichaGuia?id=" + g.getId() + "\">" + g.getTitulo()
							+ "</td>");
					out.print("<table>");
					out.print("</tr>");
					out.print("</table>");

					out.print("</div>");
				}
			} else {

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
			if (analisi != null) {
				for (Analisis a : analisi) {
					out.print("<div class=\"shadow-lg p-3 mb-5 bg-white rounded w-75\">");

					out.print("<table>");
					out.print("<tr>");
					for (Foto fa : analisisFoto) {
						if (fa.getIdJuego() == a.getId()) {
							out.print("<td><img src=\"Imagenes/" + fa.getFoto()
									+ "\" width=\"100\" height=\"65\" class=\"img-circle\"></td>");
						}
					}
					out.print("<td><a class=\"e\" href=\"FichaAnalisis?id=" + a.getId() + "\">" + a.getTitulo()
							+ "</td>");
					out.print("<table>");
					out.print("</tr>");
					out.print("</table>");

					out.print("</div>");
				}
			} else {

			}

			out.print("</div>");
			out.print("</div>");

			out.print("</div>"); //div container

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
			out.print("<a class=\"h nav-link text-white\" href=\"Main\">Inicio</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item dropdown\">");
			out.print(
					"<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Categorías</a>");
			out.print("<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">");
			out.print("<a class=\"dropdown-item\" href=\"Analisis\">Análisis</a>");
			out.print("<a class=\"dropdown-item\" href=\"Guia\">Guías</a>");
			out.print("<div class=\"dropdown-divider\"></div>");
			out.print("<a class=\"dropdown-item\" href=\"Top10\">TOP 10 | Juegos</a>");
			out.print("</div>");
			out.print("</li>");
			out.print("<li class=\"nav-item\">");
			out.print("<a class=\"nav-link text-white\" href=\"Comunidad\">Comunidad</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"Contacto\">Contacto</a>");
			out.print("</li>");
			out.print("</ul>");
			out.print("<form class=\"form-inline ml-5\">");
			out.print("<div class=\"input-group\">");
			out.print("<div class=\"input-group-prepend\">");
			if (user.getFoto().equals("desconocido.txt")) {
				out.print("<img src=\"img/usuari.png\" width=\"100\" height=\"65\" class=\"img-circle\">");
			} else {
				if (user.getFoto().matches(".+\\.(jpg|png)")) {
					out.print("<img src=\"Imagenes/" + user.getFoto() + "\" width=\"95\" height=\"65\" class=\"rounded-circle mr-4\"/>");
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

			//--------------------------------------------------------
			out.print("<nav class=\"n navbar navbar-expand-lg navbar-dark bg-success\">");
			out.print("<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">");
			out.print("<ul class=\"navbar-nav ml-5\">");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"Pc\">PC</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"Xbox\">Xbox One</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"PlayS\">Play Station 4</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"Nintendo\">Nintendo Switch</a>");
			out.print("</li>");
			out.print("</ul>");

			out.print("</header>");

			out.print("<div class=\"container p-5 mt-2 mb-2\">");

			// 			out.print("<h3></h3>");
			out.print("<div id=\"carousel\" class=\"carousel slide\" data-ride=\"carousel\">");
			out.print("<ol class=\"carousel-indicators\">");
			out.print("<li data-target=\"#carousel\" data-slide-to=\"0\" class=\"active\"></li>");
			out.print("<li data-target=\"#carousel\" data-slide-to=\"1\" ></li>");
			out.print("<li data-target=\"#carousel\" data-slide-to=\"2\" ></li>");
			out.print("</ol>");
			out.print("<div class=\"carousel-inner\">");
			out.print("<div class=\"carousel-item active\">");
			out.print("<a href=\"Analisis\"><img class=\"d-block w-100\" src=\"img/foto7.jpg\" width=\"100\" height=\"500\" alt=\"First slide\"></a>");
			out.print("<div class=\"carousel-caption d-none d-md-block\">");
			out.print("<h5>Análisis</h5>");
			out.print("<p>¡Explora los videojuegos con nuestros análisis!</p>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"carousel-item \">");
			out.print("<a href=\"Guia\"><img class=\"d-block w-100\" src=\"img/fo3.jpg\" width=\"100\" height=\"500\" alt=\"Second slide\"></a>");
			out.print("<div class=\"carousel-caption d-none d-md-block\">");
			out.print("<h5 class=\"text-dark font-weight\">Guías</h5>");
			out.print("<p class=\"text-dark\">¡Ayúdate con nuestras guías!</p>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"carousel-item \">");
			out.print("<a href=\"Top10\"><img class=\"d-block w-100\" src=\"img/foto2.jpg\" width=\"100\" height=\"500\" alt=\"tercero slide\"></a>");
			out.print("<div class=\"carousel-caption d-none d-md-block\">");
			out.print("<h5>Top 10</h5>");
			out.print("<p>¡Entérate que videojuegos están a la última!</p>");
			out.print("</div>");
			out.print("</div>");

			out.print("<a class=\"carousel-control-prev\" href=\"#carousel\" role=\"button\" data-slide=\"prev\">");
			out.print("<span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>");
			out.print("<span class=\"sr-only\">Previous</span>");
			out.print("</a>");

			out.print("<a class=\"carousel-control-next\" href=\"#carousel\" role=\"button\" data-slide=\"next\">");
			out.print("<span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>");
			out.print("<span class=\"sr-only\">Next</span>");
			out.print("</a>");

			out.print("</div>");
			out.print("</div>");



			out.print("<div class=\"row mt-5\">");
			out.print("<div class=\"col\">");//titulo
			out.print("<h3>Juegos</h3>");
			out.print("</div>");
			out.print("</div>");

			out.print("<div class=\"row\">");//lista
			out.print("<div class=\"col\">");
			if (juego != null) {
				for (Juego j : juego) {
					out.print("<div class=\"shadow-lg p-3 mb-5 bg-white rounded w-75\">");
					out.print("<table>");
					out.print("<tr>");
					out.print("<th></th>");
					out.print("<th>Título</th>");
					out.print("<th>Género</th>");
					out.print("<th>Plataforma</th>");
					out.print("<tr>");
					out.print("<tr>");
					for (Foto fj : juegoFoto) {
						if (fj.getIdJuego() == j.getId()) {
							out.print("<td><img src=\"Imagenes/" + fj.getFoto()
									+ "\" width=\"100\" height=\"65\" class=\"img-circle\"></td>");
						}
					}
					out.print("<td><a class=\"e\" href=\"FichaJuego?id=" + j.getId() + "\">" + j.getTitulo()
							+ "</a></td>");
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
			if (guia != null) {
				for (Guia g : guia) {
					out.print("<div class=\"shadow-lg p-3 mb-5 bg-white rounded w-75\">");

					out.print("<table>");
					out.print("<tr>");
					for (Foto fg : guiaFoto) {
						if (fg.getIdJuego() == g.getId()) {
							out.print("<td><img src=\"Imagenes/" + fg.getFoto()
									+ "\" width=\"100\" height=\"65\" class=\"img-circle\"></td>");
						}
					}
					out.print("<td><a class=\"e\" href=\"FichaGuia?id=" + g.getId() + "\">" + g.getTitulo()
							+ "</td>");
					out.print("<table>");
					out.print("</tr>");
					out.print("</table>");

					out.print("</div>");
				}
			} else {

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
			if (analisi != null) {
				for (Analisis a : analisi) {
					out.print("<div class=\"shadow-lg p-3 mb-5 bg-white rounded w-75\">");

					out.print("<table>");
					out.print("<tr>");
					for (Foto fa : analisisFoto) {
						if (fa.getIdJuego() == a.getId()) {
							out.print("<td><img src=\"Imagenes/" + fa.getFoto()
									+ "\" width=\"100\" height=\"65\" class=\"img-circle\"></td>");
						}
					}
					out.print("<td><a class=\"e\" href=\"FichaAnalisis?id=" + a.getId() + "\">" + a.getTitulo()
							+ "</td>");
					out.print("<table>");
					out.print("</tr>");
					out.print("</table>");

					out.print("</div>");
				}
			} else {

			}

			out.print("</div>");
			out.print("</div>");

			out.print("</div>"); //div container
		}
	%>
	<div class="footer bg-dark">
		<div class="text-center center-block p-5">
			<a href="#" class="fa fa-facebook"></a> <a href="#"
				class="fa fa-twitter"></a> <a href="#" class="fa fa-instagram"></a>
			<a href="#" class="fa fa-tumblr"></a>
		</div>
		<div class="footer-copyright text-center py-3 bg-success">
			© 2020 Copyright: <a class="text-white"
				href="https://Freak'sCorner.com/">Freak'sCorner.com</a>
		</div>
	</div>
</body>
</html>