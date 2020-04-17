<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@page import="modelo.pojo.Usuario"%>
<%@page session="false"%>
<%@page import="java.util.ArrayList"%>
     <%@page import="modelo.pojo.Guia"%>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
		Usuario user = (Usuario) request.getAttribute("usuario");
		ArrayList<Guia> listaJuego = (ArrayList<Guia>) request.getAttribute("juego");
	
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
			out.print("<a class=\"dropdown-item\" href=\"#\">Análisis de videojuegos</a>");
			out.print("<a class=\"dropdown-item\" href=\"#\">Guías de videojuegos</a>");
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
			out.print("</header>");
			
			out.print("<div class=\"container mt-5 p-5\">"); //Empieza container
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
			out.print("<h3>Tu lista de guías añadidas</h3>");
			out.print("</div>");
			out.print("<div class=\"col\">");
			out.print("<ul class=\"list-group\">");
			if(listaJuego!=null){
			for(Guia g : listaJuego){
			out.print("<li class=\"list-group-item\">"+g.getTitulo()+" <a href=\"EditadoGuia?id="+g.getId()+"\"><button type=\"button\" class=\"btn btn-success ml-5\">Editar guía</button></a></li>");
			}
			}else{
				out.print("<h5>¿No tienes guías? Añade el primero</h5>");
				out.print("<a href=\"AddGuia\"><button type=\"button\" class=\"btn btn-success ml-5\">Añadir Guía</button></a>");
			}
			out.print("</ul>");
			out.print("</div>");
			out.print("</div>");
			out.print("</div>");
		}
	%>
</body>
</html>