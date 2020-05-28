<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="modelo.pojo.Usuario"%>
<%@page import="modelo.pojo.Comunidad"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.pojo.Comentario"%>
<%@page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freak's Corner</title>
<link href="img/logo4.png" rel="icon" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="css/Style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

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
		Comunidad hilo = (Comunidad) request.getAttribute("hilo");
		ArrayList<Comentario> coment = (ArrayList<Comentario>) request.getAttribute("coment");
		ArrayList<Usuario> users = (ArrayList<Usuario>) request.getAttribute("users");

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

			//barra menu plataformas
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
			out.print("</div>");
			out.print("</nav>");
			out.print("</header>");

			//container
			out.print("<div class=\"container mt-5 p-5\">");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");

			out.print("<h3>Registrate o inicia sesión si quieres comentar</h3");
			out.print("</div>");
			out.print("</div>");
			out.print("</div>");
			out.print(
					"<a href=\"Registro\"><button type=\"button\" class=\"btn btn-success ml-5 mt-2 mb-5\">Registrarse</button></a>");
			out.print(
					"<a href=\"Login\"><button type=\"button\" class=\"btn btn-success ml-5 mt-2 mb-5\">Iniciar Sesión</button></a>");

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
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white p-4\" href=\"Contacto\">Contacto</a>");
			out.print("</li>");
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

			//barra de menu plataformas
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
			out.print("</div>");
			out.print("</nav>");
			out.print("</header>");

			//container
			out.print("<div class=\"container mt-5 p-2\">");
			
			//form
			out.print("<form method=\"post\" action=\"FichaHilo\">");
			
			//si la lista de comentarios distinta a nula
			//que muestre los comentarios que hay de esa ficha
			if (coment != null) {
				
				//1 row
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\">");
				out.print("<h2>" + hilo.getTitulo() + "</h2>"); //getTitulo
				out.print("</div>");
				out.print("</div>");//fin 1º row

				//2 row
				out.print("<div class=\"row mt-4\">");
				out.print("<div class=\"col\">");

				out.print("<img src=\"Imagenes/" + hilo.getFoto()
						+ "\" width=\"500\" height=\"400\" class=\"rounded mx-auto d-block img-fluid\">"); //getFoto

				out.print("</div>");
				out.print("</div>");
				
				//3 row
				out.print("<div class=\"row mt-1\">");
				out.print("<div class=\"col mr-5\">");
				out.print("<p>" + hilo.getHilo() + "</p>"); //getTexto
				out.print("</div>");
				out.print("</div>");

				//4 row
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col\">");

				for (Usuario us : users) {
					if (us.getId() == hilo.getIdUsuario()) {
						out.print("<p>Hilo redactado por " + us.getUser() + "</p>");
					}
				}

				out.print("</div>");
				out.print("</div>");

				//5 row
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col ml-5\">");
				out.print("<h4>Comentarios</h4>"); //Comentarios
				out.print("</div>");
				out.print("</div>");

				//6 row
				out.print("<div class=\"row\">");
				out.print("<div class=\"col ml-5\">");
				out.print("<textarea id=\"editor1\" name=\"com\" rows=\"1\" cols=\"20\"></textarea>"); //input comentario
				out.print("</div>");
				out.print("</div>");

				out.print("<button type=\"submit\" class=\"btn btn-success ml-5 mt-2 mb-5\">Comentar</button>");
				
				//7 row
				out.print("<div class=\"row mb-5\">");
				out.print("<div class=\"col ml-5\">");

				//si el usuario es administrador = 1
				if (user.getAdministrador() == 1) {
					int contador = 1;
					for (Comentario co : coment) {
						for (Usuario us : users) {
							if ((us.getId() == co.getIdUsuario()) && (co.getIdJuego() == hilo.getId())) {
								if (!user.getFoto().equals("desconocido.txt")) {
									out.print("<div class=\"card mt-3 bg-light text-white w-100\">");
									out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
											+ "</h2><img src=\"Imagenes/" + us.getFoto()
											+ "\" width=\"150\" height=\"100\" class=\"mr-5 rounded\">");//comentario
								} else {
									out.print("<div class=\"card mt-3 bg-light text-white w-100\">");
									out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
											+ "</h2><img src=\"img/usuari.jpg\" width=\"150\" height=\"100\" class=\"mr-5 rounded\">");//comentario
								}
								out.print("<p class=\"text-dark mt-3\">" + us.getUser() + " - " + co.getFecha()
										+ "</p>");
								out.print("<br>");
								out.print("<pre class=\"mr-5\">" + co.getComentario() + "</pre>");
								out.print("<hr>");
								out.print("<a href=\"BorrarComentarioComunidad?id=" + co.getId() + "&idJ="
										+ hilo.getId()
										+ "\"><i class=\"fa fa-trash-o\" onclick=\"return confirm('¿Seguro que quieres borrar?');\"></i></a>");
								out.print("</div>");
								out.print("</div>");
								out.print("<input id=\"id\" name=\"idC\" type=\"hidden\" value=\"" + co.getId()
										+ "\">");
								contador++;
							}
						}
					}

					//sino el administrador de un usuario es = 0
				} else {
					out.print("<h3>Se el primero en comentar</h3>");
					int contador = 1;

					for (Comentario co : coment) {
						for (Usuario us : users) {
							if ((us.getId() == co.getIdUsuario()) && (co.getIdJuego() == hilo.getId())) {
								if (!user.getFoto().equals("desconocido.txt")) {
									out.print("<div class=\"card mt-3 bg-light text-white w-100\">");
									out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
											+ "</h2><img src=\"Imagenes/" + us.getFoto()
											+ "\" width=\"95\" height=\"80\" class=\"mr-5 rounded\">");//comentario
								} else {
									out.print("<div class=\"card mt-3 bg-light text-white w-100\">");
									out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
											+ "</h2><img src=\"img/usuari.jpg\" width=\"95\" height=\"80\" class=\"mr-5 rounded\">");//comentario
								}
								out.print("<p class=\"text-dark mt-3\">" + us.getUser() + " - " + co.getFecha()
										+ "</p>");
								out.print("<br>");
								out.print("<pre class=\"mr-5\">" + co.getComentario() + "</pre>");
								out.print("</div>");
								out.print("</div>");
								contador++;
							}
						}
					}

				}
				out.print("</div>");
				out.print("</div>");
				out.print("</div>");
				out.print("<input id=\"id\" name=\"idH\" type=\"hidden\" value=\"" + hilo.getId() + "\">");
				out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");

				//sino la lista de comentarios es nula
				//que muestre una vista sin comentarios
			} else {

				// 1 row
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\">");
				out.print("<h2>" + hilo.getTitulo() + "</h2>"); //getTitulo
				out.print("</div>");
				out.print("</div>");//fin 1º row

				// 2 row
				out.print("<div class=\"row mt-4\">");
				out.print("<div class=\"col\">");

				out.print("<img src=\"Imagenes/" + hilo.getFoto()
						+ "\" width=\"500\" height=\"400\" class=\"rounded mx-auto d-block img-fluid\">"); //getFoto

				out.print("</div>");
				out.print("</div>");
				
				// 3 row
				out.print("<div class=\"row mt-1\">");
				out.print("<div class=\"col mt-3 mr-5 border\">");
				out.print("<p>" + hilo.getHilo() + "</p>"); //getTexto
				out.print("</div>");
				out.print("</div>");

				//4 row
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col\">");

				for (Usuario us : users) {
					if (us.getId() == hilo.getIdUsuario()) {
						out.print("<p>Hilo redactado por " + us.getUser() + " - " + hilo.getFecha() + "</p>");
					}
				}

				out.print("</div>");
				out.print("</div>");
				
				//5 row
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col\">");
				out.print("<h4>Se el primero en comentar</h4>");
				out.print("</div>");
				out.print("</div>");
				
				//6 row
				out.print("<div class=\"col\"></div>");
				out.print("<textarea  id=\"editor1\" name=\"com\" rows=\"1\" cols=\"20\"></textarea>"); //input comentario
				out.print("</div>");
				out.print("</div>");
				out.print("<button type=\"submit\" class=\"btn btn-success ml-5 mt-2 mb-5\">Comentar</button>");

			}
			out.print("<input id=\"id\" name=\"idH\" type=\"hidden\" value=\"" + hilo.getId() + "\">");
			out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");
			
			//fin del primer form
			out.print("</form>");
			out.print("</div>"); 
			
			//Fin container
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