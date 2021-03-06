<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="modelo.pojo.Usuario"%>
<%@page import="modelo.pojo.Juego"%>
<%@page import="modelo.pojo.Plataforma"%>
<%@page import="modelo.pojo.Genero"%>
<%@page import="modelo.pojo.Foto"%>
<%@page import="modelo.pojo.Comentario"%>
<%@page import="modelo.pojo.Puntuacion"%>
<%@page import="modelo.pojo.ValoracionLista"%>
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

	<!-- Div para compartir en redes lateral -->
	<div class="redes">
		<div class="face">
			<a href="https://es-es.facebook.com/" class="fa fa-facebook"></a>
		</div>
		<div class="twitter">
			<a
				href="https://twitter.com/compose/tweet?url=http://51.210.102.30:8080/MiWeb/Pc&hashtags=FreaksCorner&hashtags=Videojuegos"
				class="fa fa-twitter"></a>
		</div>
		<div class="insta">
			<a href="https://www.instagram.com/?hl=es" class="fa fa-instagram"></a>
		</div>
		<div class="tumb">
			<a href="https://www.tumblr.com/dashboard" class="fa fa-tumblr"></a>
		</div>
	</div>
	<%
		Usuario user = (Usuario) request.getAttribute("usuario");
		Juego juego = (Juego) request.getAttribute("juego");
		Puntuacion puntos = (Puntuacion) request.getAttribute("puntos");
		ArrayList<Genero> juegoList = (ArrayList<Genero>) request.getAttribute("genero");
		ArrayList<Plataforma> juegoListP = (ArrayList<Plataforma>) request.getAttribute("plataforma");
		ArrayList<Foto> foto = (ArrayList<Foto>) request.getAttribute("fotoJuego");
		ArrayList<Comentario> coment = (ArrayList<Comentario>) request.getAttribute("coment");
		ArrayList<Usuario> users = (ArrayList<Usuario>) request.getAttribute("users");
		ArrayList<ValoracionLista> puntuacion = (ArrayList<ValoracionLista>) request.getAttribute("valoracion");

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

			//barra menu de plataformas
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

			//Principio de container
			out.print("<div class=\"container mt-5 p-5\">");

			//1 row
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
			out.print("<h2>" + juego.getTitulo() + "</h2>"); //getTitulo
			out.print("</div>");
			out.print("<div class=\"col\"></div>");

			//MEDIA PUNTUACION
			//puntos es distinto de nulo
			if (puntos != null) {

				//puntos id del jeugo es igual al id del juego
				if (puntos.getIdJuego() == juego.getId()) {

					//muestre la media
					out.print("<div class=\"col-sm-3 text-right\"><h3>" + Math.round(puntos.getValoracion())
							+ "/10</h3></div>");
				}
			} else {
				//sino que muestre 0
				out.print("<div class=\"col-sm-3 text-right\"><h3>0/10</h3></div>");
			}

			out.print("<hr>");
			out.print("</div>");//fin 1º row

			// 2 row
			out.print("<div class=\"row mt-5\">");
			out.print("<div class=\"col-12\">");
			for (Foto f : foto) {
				if (juego.getId() == f.getIdJuego()) {
					out.print("<img src=\"Imagenes/" + f.getFoto()
							+ "\" width=\"500\" height=\"350\" class=\"rounded mx-auto d-block img-fluid\">"); //getFoto
				}
			}
			out.print("</div>");
			out.print("<div class=\"col mt-3\">");
			out.print("<p>" + juego.getDescripcion() + "</p>"); //getTexto
			out.print("</div>");
			out.print("</div>");

			//3 row
			out.print("<div class=\"row mt-5\">");
			out.print("<div class=\"col-2\"></div>");
			out.print("<div class=\"col-4\">");
			out.print("<div class=\"card text-center bg-info text-white\">");
			for (Genero g : juegoList) {
				if (juego.getGenero() == g.getId()) {
					out.print("<div class=\"card-body\">" + g.getNombre() + "</div>");//getGenero
				}
			}
			out.print(" </div>");
			out.print("</div>");
			out.print("<div class=\"col-4\">");
			out.print("<div class=\"card text-center bg-info text-white\">");
			for (Plataforma p : juegoListP) {
				if (juego.getPlataforma() == p.getId()) {
					out.print("<div class=\"card-body\">" + p.getNombre() + "</div>");//getGenero
				}
			}
			out.print(" </div>");
			out.print("</div>");
			out.print("</div>");
			out.print("<hr>");

			//4 row
			out.print("<div class=\"row mt-5\">");
			out.print("<div class=\"col\">");
			out.print("<h4>Comentarios</h4>"); //Comentarios
			out.print("</div>");
			out.print("</div>");

			// 5 row
			out.print("<div class=\"row mt-5\">");
			out.print("<div class=\"col-8\">");
			out.print("<h3>Registrate o Inicia Sesión para comentar</h3>");
			out.print("</div>");
			out.print("</div>");

			// 6 row
			out.print("<div class=\"row w-100 mt-5\">");
			out.print("<div class=\"col-4\">");
			out.print(
					"<a href=\"Login\"><button type=\"button\" class=\"btn btn-success ml-5 mt-2 mb-5\">Iniciar sesión</button></a>");
			out.print("</div>");
			out.print("<div class=\"col-4\">");
			out.print(
					"<a href=\"Registro\"><button type=\"button\" class=\"btn btn-primary ml-5 mt-2 mb-5\">Registrarse</button></a>");
			out.print("</div>");
			out.print("</div>");
			out.print("</div>");

			//Fin container
			out.print("</div>");

			//sino que muestre la vista de un usuario logeado
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

			//barra de menu de plataformas
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

			//Principio de container
			out.print("<div class=\"container mt-5 p-2\">");

			//si la lista de comentarios distinta a nula
			//que muestre los comentarios que hay de ese juego
			if (coment != null) {

				// 1 row
				out.print("<div class=\"row\">");
				out.print("<div class=\"col-8\">");
				out.print("<h2>" + juego.getTitulo() + "</h2>"); //getTitulo
				out.print("</div>");
				out.print("<div class=\"col\"></div>");

				//MEDIA PUNTUACION
				//puntos id del juego es igual al id del juego
				if (puntos != null) {
					if (puntos.getIdJuego() == juego.getId()) {

						//muestre la media
						out.print("<div class=\"col-sm-3 text-right\"><h3>" + Math.round(puntos.getValoracion())
								+ "/10</h3></div>");

					}
				} else {

					//sino que muestre 0
					out.print("<div class=\"col-sm-3 text-right\"><h3>0/10</h3></div>");
				}
				out.print("<div class=\"col-sm-3 mr-5\">");

				//form para puntuar el juego con estrellas
				out.print("<form method=\"post\" action=\"ValoracionJuego\" id=\"formularioP\">");

				//si puntos es distinto de nulo
				if (puntos != null) {

					//puntos de id usuario es distinto al id del usuario
					if (puntos.getIdUsuario() != user.getId()) {

						//muestre las estrellas para puntuar
						out.print("<p class=\"clasificacion\">");
						out.print("<input id=\"ra5\" type=\"radio\" name=\"estrellas\" value=\"5\">");
						out.print("<label for=\"ra5\">★</label>");
						out.print("<input id=\"ra4\" type=\"radio\" name=\"estrellas\" value=\"4\">");
						out.print("<label for=\"ra4\">★</label>");
						out.print("<input id=\"ra3\" type=\"radio\" name=\"estrellas\" value=\"3\">");
						out.print("<label for=\"ra3\">★</label>");
						out.print("<input id=\"ra2\" type=\"radio\" name=\"estrellas\" value=\"2\">");
						out.print("<label for=\"ra2\">★</label>");
						out.print(" <input id=\"ra1\" type=\"radio\" name=\"estrellas\" value=\"1\">");
						out.print("<label for=\"ra1\">★</label>");
						out.print("</p>");

					}

				} else {
					out.print("<p class=\"clasificacion\">");
					out.print("<input id=\"ra5\" type=\"radio\" name=\"estrellas\" value=\"5\">");
					out.print("<label for=\"ra5\">★</label>");
					out.print("<input id=\"ra4\" type=\"radio\" name=\"estrellas\" value=\"4\">");
					out.print("<label for=\"ra4\">★</label>");
					out.print("<input id=\"ra3\" type=\"radio\" name=\"estrellas\" value=\"3\">");
					out.print("<label for=\"ra3\">★</label>");
					out.print("<input id=\"ra2\" type=\"radio\" name=\"estrellas\" value=\"2\">");
					out.print("<label for=\"ra2\">★</label>");
					out.print(" <input id=\"ra1\" type=\"radio\" name=\"estrellas\" value=\"1\">");
					out.print("<label for=\"ra1\">★</label>");
					out.print("</p>");
				}

				out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");
				out.print("<input id=\"idJ\" name=\"idJ\" type=\"hidden\" value=\"" + juego.getId() + "\">");
				out.print("</div>");

				out.print("</form>");

				out.print("</div>");//fin 1º row

				// 2 row
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col-12\">");
				for (Foto f : foto) {
					if (juego.getId() == f.getIdJuego()) {
						out.print("<img src=\"Imagenes/" + f.getFoto()
								+ "\" width=\"500\" height=\"350\" class=\"rounded mx-auto d-block img-fluid\">"); //getFoto
					}
				}
				out.print("</div>");
				out.print("<div class=\"col mt-3\">");
				out.print("<p>" + juego.getDescripcion() + "</p>"); //getTexto
				out.print("</div>");
				out.print("</div>");

				// 3 row
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col-2\"></div>");
				out.print("<div class=\"col-4\">");
				out.print("<div class=\"card text-center bg-info text-white\">");
				for (Genero g : juegoList) {
					if (juego.getGenero() == g.getId()) {
						out.print("<div class=\"card-body\">" + g.getNombre() + "</div>");//getGenero
					}
				}
				out.print(" </div>");
				out.print("</div>");
				out.print("<div class=\"col-4\">");
				out.print("<div class=\"card text-center bg-info text-white\">");
				for (Plataforma p : juegoListP) {
					if (juego.getPlataforma() == p.getId()) {
						out.print("<div class=\"card-body\">" + p.getNombre() + "</div>");//getGenero
					}
				}
				out.print(" </div>");
				out.print("</div>");
				out.print("</div>");

				//4 row
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col\">");
				out.print("<h4>Comentarios</h4>"); //Comentarios
				out.print("</div>");
				out.print("</div>");

				//form para los comentarios
				out.print("<form method=\"post\" action=\"FichaJuego\">");

				// 5 row
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col\">");
				out.print("<textarea id=\"editor1\" name=\"com\" rows=\"10\" cols=\"40\"></textarea>"); //input comentario
				out.print("</div>");
				out.print("</div>");
				out.print("<button type=\"submit\" class=\"btn btn-success ml-5 mt-2 mb-5\">Comentar</button>");
				out.print("<input id=\"id\" name=\"idJ\" type=\"hidden\" value=\"" + juego.getId() + "\">");
				out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");
				out.print("</form>");

				//6  row
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\">");

				//si el usuario es administrador = 1
				if (user.getAdministrador() == 1) {
					int contador = 1;

					//for para comparar en la lista de comentarios
					for (Comentario co : coment) {

						//for parar comparar en la lista de usuarios
						for (Usuario us : users) {

							//si el id del usuario es el mismo que hay en el id de usuario de comentarios
							// y que el id de juego que hay en comentarios es el mismo que el id del juego
							if ((us.getId() == co.getIdUsuario()) && (co.getIdJuego() == juego.getId())) {

								if (!user.getFoto().equals("desconocido.txt")) {
									out.print("<div class=\"card mt-3 bg-light text-white mb-5\">");
									out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
											+ "</h2><img src=\"Imagenes/" + us.getFoto()
											+ "\" width=\"95\" height=\"80\" class=\"rounded mr-5\">");//comentario
								} else {
									out.print("<div class=\"card mt-3 bg-light text-white w-100 mb-5\">");
									out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
											+ "</h2><img src=\"img/usuari.png\" width=\"95\" height=\"80\" class=\"mr-5 rounded\">");//comentario
								}

								//muestre la opcion de borrar el comentario por ser administrador
								out.print("<p class=\"text-dark mt-3\">" + us.getUser() + " - " + co.getFecha()
										+ "</p>");
								out.print("<br>");
								out.print("<pre class=\"mr-5\">" + co.getComentario() + "</pre>");
								out.print("<hr>");
								out.print("<a href=\"BorrarComentarioJuego?id=" + co.getId() + "&idJ="
										+ juego.getId()
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
					out.print("<hr>");
					int contador = 1;

					for (Comentario co : coment) {
						for (Usuario us : users) {
							if ((us.getId() == co.getIdUsuario()) && (co.getIdJuego() == juego.getId())) {
								if (!user.getFoto().equals("desconocido.txt")) {
									out.print("<div class=\"card mt-3 bg-light text-white mt-5 mb-5\">");
									out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
											+ "</h2><img src=\"Imagenes/" + us.getFoto()
											+ "\" width=\"95\" height=\"80\" class=\"rounded mr-5\">");//comentario
								} else {
									out.print("<div class=\"card mt-3 bg-light text-white w-100 mb-5\">");
									out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
											+ "</h2><img src=\"img/usuari.png\" width=\"95\" height=\"80\" class=\"mr-5 rounded\">");//comentario

								}
								out.print("<p class=\"text-dark mt-3\">" + us.getUser() + " - " + co.getFecha()
										+ "</p>");
								out.print("<br>");
								out.print("<pre class=\"mr-5\">" + co.getComentario() + "</pre>");
								out.print("</div>");
								out.print("</div>");
								out.print("<input id=\"id\" name=\"idC\" type=\"hidden\" value=\"" + co.getId()
										+ "\">");
								contador++;
							}
						}
					}

				}

				out.print("</div>");
				out.print("</div>");

				//sino la lista de comentarios es nula
				//que muestre una vista sin comentarios
			} else {

				// 1 row
				out.print("<div class=\"row\">");
				out.print("<div class=\"col-8\">");
				if (juego.getTitulo() != null) {
					out.print("<h2>" + juego.getTitulo() + "</h2>"); //getTitulo
				}
				out.print("</div>");
				out.print("<div class=\"col\"></div>");

				//MEDIA PUNTUACION
				if (puntos != null) {
					for (ValoracionLista p : puntuacion) {
						if (p.getPuntuacion() != null) {
							if (p.getIdJuego() == juego.getId()) {
								out.print("<div class=\"col-sm-3 text-right\"><h3>"
										+ Math.round(puntos.getValoracion()) + "/10</h3></div>");
							}
						}
					}
				} else {
					out.print("<div class=\"col-sm-3 text-right\"><h3>0/10</h3></div>");
				}
				out.print("<div class=\"col-sm-3 mr-5\">");

				//form para puntuar las estrellas
				out.print("<form method=\"post\" action=\"ValoracionJuego\" id=\"formularioP\">");
				//si puntos es distinto de nulo
				if (puntos != null) {
					if (puntos.getIdUsuario() != user.getId()) {
						out.print("<p class=\"clasificacion\">");
						out.print("<input id=\"ra5\" type=\"radio\" name=\"estrellas\" value=\"5\">");
						out.print("<label for=\"ra5\">★</label>");
						out.print("<input id=\"ra4\" type=\"radio\" name=\"estrellas\" value=\"4\">");
						out.print("<label for=\"ra4\">★</label>");
						out.print("<input id=\"ra3\" type=\"radio\" name=\"estrellas\" value=\"3\">");
						out.print("<label for=\"ra3\">★</label>");
						out.print("<input id=\"ra2\" type=\"radio\" name=\"estrellas\" value=\"2\">");
						out.print("<label for=\"ra2\">★</label>");
						out.print(" <input id=\"ra1\" type=\"radio\" name=\"estrellas\" value=\"1\">");
						out.print("<label for=\"ra1\">★</label>");
						out.print("</p>");
					}
				} else {
					out.print("<p class=\"clasificacion\">");
					out.print("<input id=\"ra5\" type=\"radio\" name=\"estrellas\" value=\"5\">");
					out.print("<label for=\"ra5\">★</label>");
					out.print("<input id=\"ra4\" type=\"radio\" name=\"estrellas\" value=\"4\">");
					out.print("<label for=\"ra4\">★</label>");
					out.print("<input id=\"ra3\" type=\"radio\" name=\"estrellas\" value=\"3\">");
					out.print("<label for=\"ra3\">★</label>");
					out.print("<input id=\"ra2\" type=\"radio\" name=\"estrellas\" value=\"2\">");
					out.print("<label for=\"ra2\">★</label>");
					out.print(" <input id=\"ra1\" type=\"radio\" name=\"estrellas\" value=\"1\">");
					out.print("<label for=\"ra1\">★</label>");
					out.print("</p>");
				}

				out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");
				out.print("<input id=\"idJ\" name=\"idJ\" type=\"hidden\" value=\"" + juego.getId() + "\">");
				out.print("</div>");
				out.print("</form>");
				out.print("</div>");//fin 1º row

				//2 row
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col-12\">");
				for (Foto f : foto) {
					if (juego.getId() == f.getIdJuego()) {
						out.print("<img src=\"Imagenes/" + f.getFoto()
								+ "\" width=\"500\" height=\"350\" class=\"rounded mx-auto d-block img-fluid\">"); //getFoto
					}
				}
				out.print("</div>");
				out.print("<div class=\"col mt-3\">");
				out.print("<p>" + juego.getDescripcion() + "</p>"); //getTexto
				out.print("</div>");
				out.print("</div>");

				//3 row
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col-2\"></div>");
				out.print("<div class=\"col-4\">");
				out.print("<div class=\"card text-center bg-info text-white\">");
				for (Genero g : juegoList) {
					if (juego.getGenero() == g.getId()) {
						out.print("<div class=\"card-body\">" + g.getNombre() + "</div>");//getGenero
					}
				}
				out.print(" </div>");
				out.print("</div>");
				out.print("<div class=\"col-4\">");
				out.print("<div class=\"card text-center bg-info text-white\">");
				for (Plataforma p : juegoListP) {
					if (juego.getPlataforma() == p.getId()) {
						out.print("<div class=\"card-body\">" + p.getNombre() + "</div>");//getGenero
					}
				}
				out.print(" </div>");
				out.print("</div>");
				out.print("</div>");

				//form para comentar
				out.print("<form method=\"post\" action=\"FichaJuego\">");

				//4 row
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col\">");
				out.print("<h4>Se el primero en comentar</h4>");
				out.print("</div>");
				out.print("</div>");

				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col\">");
				out.print("<textarea id=\"editor1\" name=\"com\" rows=\"10\" cols=\"40\"></textarea>"); //input comentario
				out.print("</div>");
				out.print("</div>");
				out.print("<button type=\"submit\" class=\"btn btn-success ml-5 mt-5 mb-5\">Comentar</button>");
				out.print("<input id=\"id\" name=\"idJ\" type=\"hidden\" value=\"" + juego.getId() + "\">");
				out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");
			}
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