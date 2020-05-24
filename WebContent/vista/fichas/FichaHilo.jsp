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
		Comunidad hilo = (Comunidad) request.getAttribute("hilo");
		ArrayList<Comentario> coment = (ArrayList<Comentario>) request.getAttribute("coment");
		ArrayList<Usuario> users = (ArrayList<Usuario>) request.getAttribute("users");

	
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
			out.print("<a class=\"dropdown-item\" href=\"Login\">TOP 10 | Juegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"Analisis\">Análisis de videojuegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"Guia\">Guías de videojuegos</a>");
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
			
			
			
//------------------------------------------------------------------------------------------------
			
			out.print("<div class=\"container mt-5 p-5\">");//Principio de container
			if(coment != null){
			out.print("<div class=\"row mb-5\">");
			out.print("<div class=\"col\">");
			out.print("<h2>" + hilo.getTitulo() + "</h2>"); //getTitulo
			out.print("</div>");
			out.print("<hr>");
			out.print("</div>");//fin 1º row
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\"></div>");
			out.print("<div class=\"col\"></div>");
			out.print("</div>");
			out.print("</div>");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
	
			out.print("<img src=\"Imagenes/" + hilo.getFoto()+ "\" width=\"300\" height=\"200\" class=\"mt-5\">"); //getFoto

			out.print("</div>");
			out.print("<div class=\"col mt-3\">");
			out.print("<p>" +hilo.getHilo()+ "</p>"); //getTexto
			out.print("</div>");
			out.print("</div>");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
		
			for (Usuario us : users) {
				if(us.getId()==hilo.getIdUsuario()){
			out.print("<p>Guía redactada por "+us.getUser()+"</p>");
				}
			}
			
			out.print("</div>");
			out.print("</div>");
			out.print("<div class=\"row mt-5\">");
			out.print("<div class=\"col\">");

			int totalComentarios = coment.size(); //total de comentarios que hay

			out.print("<h4>Comentarios " + totalComentarios + "</h4>"); //Comentarios
			out.print("</div>");
			out.print("</div>");
			int contador = 1;
			
			for (Comentario co : coment) {
				for (Usuario us : users) {
					if (us.getId() == co.getIdUsuario()) {
						if (us.getFoto().equals("desconocido.txt")) {
							out.print("<div class=\"card mt-3 bg-light text-white w-50\">");
							out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
									+ "</h2><img src=\"img/usuari.jpg\" width=\"150\" height=\"100\" class=\"mr-5\">");//comentario
							}else{
								out.print("<div class=\"card mt-3 bg-light text-white w-50\">");
								out.print("<div class=\"card-body\"><h2 class=\"text-dark\">" + contador
										+ "</h2><img src=\"Imagenes/" + us.getFoto()
										+ "\" width=\"150\" height=\"100\" class=\"mr-5\">");//comentario
					
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
			
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
	
				
			out.print("<h3>Registrate o inicia sesión si quieres comentar</h3");
			out.print("</div>");
			out.print("</div>");
			out.print("<a href=\"Registro\"><button type=\"button\" class=\"btn btn-success ml-5 mt-2 mb-5\">Registrarse</button></a>");
			out.print("<a href=\"Login\"><button type=\"button\" class=\"btn btn-success ml-5 mt-2 mb-5\">Iniciar Sesión</button></a>");
			
			}else{
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\">");
				out.print("<h2>" + hilo.getTitulo() + "</h2>"); //getTitulo
				out.print("</div>");
				out.print("<hr>");
				out.print("</div>");//fin 1º row
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\"></div>");
				out.print("<div class=\"col\"></div>");
				out.print("</div>");
				out.print("</div>");
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\">");

				out.print("<img src=\"Imagenes/" + hilo.getFoto()+ "\" width=\"300\" height=\"200\" class=\"rounded mx-auto d-block\">"); //getFoto
			
				out.print("</div>");
				out.print("<div class=\"col mt-3\">");
				out.print("<p>" +hilo.getHilo()+ "</p>"); //getTexto
				out.print("</div>");
				out.print("</div>");
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\">");
			
				for (Usuario us : users) {
					if(us.getId()==hilo.getIdUsuario()){
				out.print("<p>Guía redactada por "+us.getUser()+"</p>");
					}
				}
				
				out.print("</div>");
				out.print("</div>");
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col\">");
				
				out.print("<h4>Comentarios 0</h4>"); //Comentarios
				out.print("</div>");
				out.print("</div>");
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\">");
		
					
				out.print("<h3>Registrate o inicia sesión si quieres comentar</h3");
				out.print("</div>");
				out.print("</div>");
				out.print("<a href=\"Registro\"><button type=\"button\" class=\"btn btn-success ml-5 mt-2 mb-5\">Registrarse</button></a>");
				out.print("<a href=\"Login\"><button type=\"button\" class=\"btn btn-success ml-5 mt-2 mb-5\">Iniciar Sesión</button></a>");
			}
			
		
			out.print("</div>"); //Fin container

			
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
			out.print("<a class=\"dropdown-item\" href=\"Analisis\">Análisis de videojuegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"Guia\">Guías de videojuegos</a>");
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
			if(user.getFoto().equals("desconocido.txt")){
			out.print("<img src=\"img/usuari.jpg\" width=\"65\" height=\"55\" class=\"img-circle\">");
			}else{
				if (user.getFoto().matches(".+\\.(jpg|png)")){
					out.print("<img src=\"Imagenes/" + user.getFoto() + "\" width=\"60\" height=\"55\"/>");
				}
			}
			out.print("</div>");
			out.print(
					"<input type=\"text\" readonly=\"readonly\"  disabled=\"disabled\" class=\"form-control mt-3 ml-2 text-center\" placeholder=\""+user.getUser()+"\" aria-label=\"Username\" aria-describedby=\"basic-addon1\">");
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
			
			//------------------------------------------------------------------------------------------------
			
			out.print("<div class=\"container mt-5 p-2\">");//Principio de container
			out.print("<form method=\"post\" action=\"FichaHilo\">");
			if(coment != null){
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
			out.print("<h2>" + hilo.getTitulo() + "</h2>"); //getTitulo
			out.print("</div>");
			out.print("<hr>");
			out.print("</div>");//fin 1º row
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\"></div>");
			out.print("<div class=\"col\"></div>");
			out.print("</div>");
			out.print("</div>");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");

					out.print("<img src=\"Imagenes/" + hilo.getFoto()+ "\" width=\"300\" height=\"200\" class=\"rounded mx-auto d-block\">"); //getFoto

			out.print("</div>");
			out.print("<div class=\"col mt-3 mr-5\">");
			out.print("<p>" +hilo.getHilo()+ "</p>"); //getTexto
			out.print("</div>");
			out.print("</div>");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col ml-5\">");
		
			for (Usuario us : users) {
				if(us.getId()==hilo.getIdUsuario()){
			out.print("<p>Guía redactada por "+us.getUser()+"</p>");
				}
			}
			
			out.print("</div>");
			out.print("</div>");
			out.print("<div class=\"row mt-5\">");
			out.print("<div class=\"col ml-5\">");

			int totalComentarios = coment.size(); //total de comentarios que hay

			out.print("<h4>Comentarios " + totalComentarios + "</h4>"); //Comentarios
			out.print("</div>");
			out.print("</div>");
			out.print("<div class=\"row mt-5\">");
			out.print("<div class=\"col\">");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col ml-5\">");
			out.print("<textarea id=\"editor1\" name=\"com\" rows=\"1\" cols=\"20\"></textarea>"); //input comentario
			out.print("</div>");
			out.print("</div>");
			out.print("<button type=\"submit\" class=\"btn btn-success ml-5 mt-2 mb-5\">Comentar</button>");
			out.print("<div class=\"row\">");
			out.print("<div class=\"col ml-5\">");
			
	
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
								out.print("<a href=\"BorrarComentarioComunidad?id=" + co.getId() + "&idJ="
										+ hilo.getId()
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
					out.print("<h3>Se el primero en comentar</h3>");
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
			out.print("<input id=\"id\" name=\"idH\" type=\"hidden\" value=\"" + hilo.getId() + "\">");
			out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");
			
			}else{
				
				out.print("<div class=\"row\">");
				out.print("<div class=\"col\">");
				out.print("<h2>" + hilo.getTitulo() + "</h2>"); //getTitulo
				out.print("</div>");
				out.print("<hr>");
				out.print("</div>");//fin 1º row

				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col-md-4\">");
	
				out.print("<img src=\"Imagenes/" + hilo.getFoto()+ "\" width=\"300\" height=\"200\" class=\"rounded mx-auto d-block\">"); //getFoto
		
				out.print("</div>");
				out.print("<div class=\"col-sm-3\">");
				
				for (Usuario us : users) {
					if(us.getId()==hilo.getIdUsuario()){
				out.print("<p>Por "+us.getUser()+" - "+hilo.getFecha()+"</p>");
					}
				}
				
				out.print("</div>");
				out.print("<div class=\"col mt-3 mr-5\">");
				out.print("<p>" + hilo.getHilo() + "</p>"); //getTexto
				out.print("</div>");
				out.print("</div>");

				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col\">");
				out.print("<h4>Se el primero en comentar</h4>");
				out.print("</div>");
				out.print("</div>");
				out.print("<div class=\"row mt-5\">");
				out.print("<div class=\"col\">");
				out.print("<div class=\"col\"></div>");
				out.print("<textarea  id=\"editor1\" name=\"com\" rows=\"1\" cols=\"20\"></textarea>"); //input comentario
				out.print("</div>");
				out.print("</div>");
				out.print("<button type=\"submit\" class=\"btn btn-success ml-5 mt-2 mb-5\">Comentar</button>");
				
			}
			out.print("<input id=\"id\" name=\"idH\" type=\"hidden\" value=\"" + hilo.getId() + "\">");
			out.print("<input id=\"idU\" name=\"idU\" type=\"hidden\" value=\"" + user.getId() + "\">");
			out.print("</form>");
			out.print("</div>"); //Fin container

		}
	
	%>
</body>
</html>