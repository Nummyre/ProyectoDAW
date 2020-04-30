<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="modelo.pojo.Usuario"%>
<%@page import="modelo.pojo.Juego"%>
<%@page import="modelo.pojo.Plataforma"%>
<%@page import="modelo.pojo.Genero"%>
<%@page import="modelo.pojo.Foto"%>
<%@page import="modelo.pojo.Comentario"%>
<%@page import="modelo.pojo.Puntuacion"%>
<%@page import="java.util.ArrayList"%>
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
		<script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
	<script type="text/javascript" src="js/Fichas.js"></script>
	<link rel="stylesheet" type="text/css" href="css/Style.css">
</head>
<body onload="editor()">
	<%
		Usuario user = (Usuario) request.getAttribute("usuario");
		Juego juego = (Juego) request.getAttribute("juego");
		ArrayList<Genero> juegoList = (ArrayList<Genero>) request.getAttribute("genero");
		ArrayList<Plataforma> juegoListP = (ArrayList<Plataforma>) request.getAttribute("plataforma");
		ArrayList<Foto> foto = (ArrayList<Foto>) request.getAttribute("fotoJuego");
		ArrayList<Comentario> coment = (ArrayList<Comentario>) request.getAttribute("coment");
		ArrayList<Usuario> users = (ArrayList<Usuario>) request.getAttribute("users");
		ArrayList<Puntuacion> puntuacion = (ArrayList<Puntuacion>) request.getAttribute("valoracion");

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
			out.print("<a class=\"dropdown-item\" href=\"Analisis\">Análisis</a>");
			out.print("<a class=\"dropdown-item\" href=\"Guia\">Guías</a>");
			out.print("<div class=\"dropdown-divider\"></div>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Contacto</a>");
			out.print("</div>");
			out.print("</li>");
			out.print("</ul>");
			out.print("<form class=\"form-inline my-2 my-lg-0 mr-5\">");
			out.print(
					"<input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Búsqueda\" aria-label=\"Search\">");
			out.print("<button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\">Búsqueda</button>");
			out.print("</form>");
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
			out.print("<a class=\"dropdown-item\" href=\"#\">TOP 10|Juegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"Analisis\">Análisis</a>");
			out.print("<a class=\"dropdown-item\" href=\"Guia\">Guías</a>");
			out.print("<div class=\"dropdown-divider\"></div>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Contacto</a>");
			out.print("</div>");
			out.print("</li>");
			out.print("</ul>");
			out.print("<form class=\"form-inline my-2 my-lg-0 mr-5\">");
			out.print(
					"<input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Búsqueda\" aria-label=\"Search\">");
			out.print("<button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\">Búsqueda</button>");
			out.print("</form>");
			out.print("<form class=\"form-inline ml-5\">");
			out.print("<div class=\"input-group\">");
			out.print("<div class=\"input-group-prepend\">");
			if (user.getFoto().equals("desconocido.txt")) {
				out.print("<img src=\"img/usuari.jpg\" width=\"65\" height=\"55\" class=\"img-circle\">");
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

			//-----------------------------------------------------------------------------

			out.print("<div class=\"container mt-5 p-2\">");//Principio de container
			if(coment != null){
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
			out.print("<h2>" + juego.getTitulo() + "</h2>"); //getTitulo
			out.print("</div>");
			out.print("<div class=\"col\"></div>");
			for(Puntuacion p : puntuacion){//---------------------------------MEDIA PUNTUACION
				double media = 0.0;
				media = media + p.getPuntuacion();
				media = media / p.getPuntuacion();
			if (p.getPuntuacion() != null) {
				out.print("<div class=\"col-sm-3 text-right\"><h3>"+Math.round(media)+"/10</h3></div>");
			} else {
				out.print("<div class=\"col-sm-3 text-right\"><h3>0/10</h3></div>");
			}
			}
			out.print("<div class=\"col-sm-3 mr-5\">");
			out.print("<form method=\"get\" action=\"ValoracionJuego\"");
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
			out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");
			out.print("<input id=\"id\" name=\"idJ\" type=\"hidden\" value=\"" + juego.getId() + "\">");
			out.print("</div>");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
			out.print("<button type=\"submit\" class=\"btn btn-success mr-5\">Puntua!</button>");
			out.print("</div>");
			out.print("</div>");
			out.print("</form>");	
			out.print("<hr>");
			out.print("</div>");//fin 1º row
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\"></div>");
			out.print("<div class=\"col\"></div>");
			out.print("<div class=\"col\">");
			out.print("<div class=\"card text-center bg-info text-white\">");
			for (Genero g : juegoList) {
				if (juego.getGenero() == g.getId()) {
					out.print("<div class=\"card-body\">" + g.getNombre() + "</div>");//getGenero
				}
			}
			out.print(" </div>");
			out.print("</div>");
			out.print("<div class=\"col\">");
			out.print("<div class=\"card text-center bg-info text-white\">");
			for (Plataforma p : juegoListP) {
				if (juego.getPlataforma() == p.getId()) {
					out.print("<div class=\"card-body\">" + p.getNombre() + "</div>");//getGenero
				}
			}
			out.print(" </div>");
			out.print("</div>");
			out.print("</div>");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
			for (Foto f : foto) {
				if (juego.getId() == f.getId()) {
					out.print("<img src=\"Imagenes/" + f.getFoto()
							+ "\" width=\"300\" height=\"200\" class=\"rounded mx-auto d-block\">"); //getFoto
				} 
			}
			out.print("</div>");
			out.print("<div class=\"col mt-3\">");
			out.print("<p>" + juego.getDescripcion() + "</p>"); //getTexto
			out.print("</div>");
			out.print("</div>");
			out.print("<form method=\"post\" action=\"FichaJuego\">"); //FORMCOmentarios
			out.print("<div class=\"row mt-5\">");
			out.print("<div class=\"col\">");

			int totalComentarios = coment.size(); //total de comentarios que hay

			out.print("<h4>Comentarios " + totalComentarios + "</h4>"); //Comentarios
			out.print("</div>");
			out.print("</div>");
			out.print("<div class=\"row mt-5\">");
			out.print("<div class=\"col\">");
			out.print("<textarea id=\"editor1\" name=\"com\" rows=\"10\" cols=\"40\"></textarea>"); //input comentario
			out.print("</div>");
			out.print("</div>");
			out.print("<button type=\"submit\" class=\"btn btn-success ml-5 mt-2 mb-5\">Comentar</button>");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
			
	
			if (user.getAdministrador() == 1) {
				//for
				int contador = 1;
					for (Comentario co : coment) {
						for (Usuario us : users) {
							if (us.getId() == co.getIdUsuario()) {

								if (!user.getFoto().equals("desconocido.txt")) {
									out.print("<div class=\"card mt-3 bg-light text-white w-50\">");
									out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
											+ "</h2><img src=\"Imagenes/" + us.getFoto()
											+ "\" width=\"150\" height=\"100\" class=\"mr-5\">");//comentario
									}else{
										out.print("<div class=\"card mt-3 bg-light text-white w-50\">");
										out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
												+ "</h2><img src=\"img/usuari.jpg\" width=\"150\" height=\"100\" class=\"mr-5\">");//comentario
									}
								out.print(
										"<p class=\"text-dark\">" + us.getUser() + " - " + co.getFecha() + "</p>");
								out.print("<br>");
								out.print("<pre class=\"mr-5\">" + co.getComentario() + "</pre>");
								out.print("<a href=\"BorrarComentarioJuego?id=" + co.getId() + "&idJ="
										+ juego.getId()
										+ "\" class=\"align-self-end ml-auto\"><button type=\"button\" class=\"btn btn-success mt-2 mb-5\">Borrar</button></a>");
								out.print("</div>");
								out.print("</div>");
								out.print("<input id=\"id\" name=\"idC\" type=\"hidden\" value=\"" + co.getId()
										+ "\">");
								contador++;
							}
						}
					}
				
			}else {
				//for
					out.print("<h3>Se el primero en comentar</h3");
				int contador = 1;
			
					for (Comentario co : coment) {
						for (Usuario us : users) {
							if (us.getId() == co.getIdUsuario()) {
								if (!user.getFoto().equals("desconocido.txt")) {
									out.print("<div class=\"card mt-3 bg-light text-white w-50\">");
									out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
											+ "</h2><img src=\"Imagenes/" + us.getFoto()
											+ "\" width=\"150\" height=\"100\" class=\"mr-5\">");//comentario
									}else{
										out.print("<div class=\"card mt-3 bg-light text-white w-50\">");
										out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
												+ "</h2><img src=\"img/usuari.jpg\" width=\"150\" height=\"100\" class=\"mr-5\">");//comentario
									}
								out.print(
										"<p class=\"text-dark\">" + us.getUser() + " - " + co.getFecha() + "</p>");
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
			out.print("<input id=\"id\" name=\"idJ\" type=\"hidden\" value=\"" + juego.getId() + "\">");
			out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");
			out.print("</form>");
			}else{
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\">");
				out.print("<h2>" + juego.getTitulo() + "</h2>"); //getTitulo
				out.print("</div>");
				out.print("<div class=\"col\"></div>");
				for(Puntuacion p : puntuacion){ //---------------------------------MEDIA PUNTUACION
					double media = 0.0;
					media = media + p.getPuntuacion();
					media = media / p.getPuntuacion();
					if (p.getPuntuacion() != null) {
					out.print("<div class=\"col-sm-3 text-right\"><h3>"+Math.round(media)+"/10</h3></div>");
				} else {
					out.print("<div class=\"col-sm-3 text-right\"><h3>0/10</h3></div>");
				}
				}
				out.print("<div class=\"col-sm-3 mr-5\">");
				out.print("<form method=\"get\" action=\"ValoracionJuego\"");
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
				out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");
				out.print("<input id=\"id\" name=\"idJ\" type=\"hidden\" value=\"" + juego.getId() + "\">");	
				out.print("</div>");
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\">");
				out.print("<button type=\"submit\" class=\"btn btn-success mr-5\">Puntua!</button>");
				out.print("</div>");
				out.print("</div>");
				out.print("</form>");
				out.print("<hr>");
				out.print("</div>");//fin 1º row
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\"></div>");
				out.print("<div class=\"col\"></div>");
				out.print("<div class=\"col\">");
				out.print("<div class=\"card text-center bg-info text-white\">");
				for (Genero g : juegoList) {
					if (juego.getGenero() == g.getId()) {
						out.print("<div class=\"card-body\">" + g.getNombre() + "</div>");//getGenero
					}
				}
				out.print(" </div>");
				out.print("</div>");
				out.print("<div class=\"col\">");
				out.print("<div class=\"card text-center bg-info text-white\">");
				for (Plataforma p : juegoListP) {
					if (juego.getPlataforma() == p.getId()) {
						out.print("<div class=\"card-body\">" + p.getNombre() + "</div>");//getGenero
					}
				}
				out.print(" </div>");
				out.print("</div>");
				out.print("</div>");
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\">");
				for (Foto f : foto) {
					if (juego.getId() == f.getId()) {
						out.print("<img src=\"Imagenes/" + f.getFoto()
								+ "\" width=\"300\" height=\"200\" class=\"rounded mx-auto d-block\">"); //getFoto
					} else {
						out.print("<p>Error</p>"); //getFoto
					}
				}
				out.print("</div>");
				out.print("<div class=\"col mt-3\">");
				out.print("<p>" + juego.getDescripcion() + "</p>"); //getTexto
				out.print("</div>");
				out.print("</div>");
				out.print("<form method=\"post\" action=\"FichaJuego\">");
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
				out.print("<button type=\"submit\" class=\"btn btn-success ml-5 mt-2 mb-5\">Comentar</button>");
				out.print("<input id=\"id\" name=\"idJ\" type=\"hidden\" value=\"" + juego.getId() + "\">");
				out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");
			}
			out.print("</form>");
			out.print("</div>"); //Fin container

		}
	%>
</body>
</html>