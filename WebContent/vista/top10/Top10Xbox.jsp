<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="modelo.pojo.Usuario"%>
<%@page import="modelo.pojo.Top10"%>
<%@page import="modelo.pojo.Foto"%>
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
</head>
<body>
	<%
		Usuario user = (Usuario) request.getAttribute("usuario");
	ArrayList<Top10> top = (ArrayList<Top10>) request.getAttribute("top");
	ArrayList<Foto> foto = (ArrayList<Foto>) request.getAttribute("foto");

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
			out.print("<a class=\"dropdown-item\" href=\"Top10\">TOP 10|Juegos</a>");
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
			
			//-----------------------------------------------------------------------------------------
			
			
			out.print("<div class=\"container mt-5 p-4 ml-5\">");
			out.print("<div class=\"row\"");
			out.print("<div class=\"col\">");
			out.print("<h3>Top10 | Juegos Xbox</h3>");
			out.print("</div>");
			out.print("</div>");
			out.print("<hr>");
			out.print("<div class=\"form-row mt-4\"");
			out.print("<div class=\"col-md-4\">");
			out.print("</div>");
			//----TABLA------------------------------
			out.print("<div class=\"col-md-4\">");
			out.print("<table class=\"table\">");
			out.print("<thead class=\"thead-dark\">");
			out.print("<tr>");
			out.print("<th scope=\"col\">Ranking</th>");
			out.print("<th scope=\"col\">Foto</th>");
			out.print("<th scope=\"col\">Título</th>");
			out.print("<th scope=\"col\">Año de lanzamiento</th>");
			out.print("<th scope=\"col\">Género</th>");
			out.print("<th scope=\"col\">Plataforma</th>");
			out.print("<th scope=\"col\">Valoración</th>");
			out.print("</tr>");
			out.print("</thead>");
			out.print("<tbody>");
			int count = 1;
			if(top!=null){
			for(Top10 t : top){
			out.print("<tr>");
			out.print("<th scope=\"row\">"+count+"</th>");
			for(Foto f : foto){
				if(f.getIdJuego() == t.getId()){
					out.print("<td><img src=\"Imagenes/" + f.getFoto()
					+ "\" width=\"50\" height=\"50\" class=\"rounded mx-auto d-block\"></td>"); //getFoto
				}
			}
			out.print("<td><a href=\"FichaJuego?id="+t.getId()+"\">"+t.getNombre()+"</a></td>");
			out.print("<td>"+t.getAnyo()+"</td>");
			out.print("<td>"+t.getGenero()+"</td>");
			out.print("<td>"+t.getPlataforma()+"</td>");
			out.print("<td>"+t.getPuntuacion()+"/10</td>");
			out.print("</tr>");	
			count++;
			}
			}
			out.print("</tbody>");
			out.print("</table>");
			//-----------------------
			out.print("</div>");
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
			
			//-------------------------------------------TOP10 PLATAFORMAS
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
			out.print("<div class=\"pos-f-t\">");
			out.print(" <div class=\"collapse\" id=\"navbarToggleExternalContent\">");
			out.print(" <div class=\"bg-success p-4\">");
			out.print("<ul class=\"navbar-nav ml-1\">");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"PlataformaPc?id=4\">PC</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"PlataformaXbox?id=2\">Xbox One</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"PlataformaPlay?id=1\">Play Station 4</a>");
			out.print("</li>");
			out.print("<li class=\"nav-item mr-5\">");
			out.print("<a class=\"nav-link text-white\" href=\"PlataformaNintendo?id=3\">Nintendo Switch</a>");
			out.print("</li>");
			out.print("</ul>");
			out.print("</div>");
			out.print("</div>");
			out.print("  <nav class=\"navbar navbar-light bg-success\"><h5>Top 10 | Plataformas</h5>");
			out.print(" <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarToggleExternalContent\" aria-controls=\"navbarToggleExternalContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">");
			out.print("  <span class=\"navbar-toggler-icon\"></span>");
			out.print("</button>");
			out.print("</nav>");
			out.print("</div>");
			out.print("</div>");
			out.print("</div>");
			
			out.print("<div class=\"container mt-5 p-3\">");
				
			out.print("<div class=\"row\">");
			out.print("<div class=\"col\">");
			out.print("<h3>Top10 | Juegos Xbox</h3>");
			out.print("</div>");
			out.print("</div>");
			out.print("<hr>");
			out.print("<div class=\"form-row mt-4\"");
			out.print("<div class=\"col-md-4\">");
			out.print("</div>");
			//----TABLA------------------------------
			out.print("<div class=\"col-md-4\">");
			out.print("<table class=\"table\">");
			out.print("<thead class=\"thead-dark\">");
			out.print("<tr>");
			out.print("<th scope=\"col\">Ranking</th>");
			out.print("<th scope=\"col\">(foto)</th>");
			out.print("<th scope=\"col\">Título</th>");
			out.print("<th scope=\"col\">Año de Lanzamiento</th>");
			out.print("<th scope=\"col\">Género</th>");
			out.print("<th scope=\"col\">Plataforma</th>");
			out.print("<th scope=\"col\">Valoración</th>");
			out.print("</tr>");
			out.print("</thead>");
			out.print("<tbody>");
			int count = 1;
			if(top!=null){
				for(Top10 t : top){
				out.print("<tr>");
				out.print("<th scope=\"row\">"+count+"</th>");
				for(Foto f : foto){
					if(f.getIdJuego() == t.getId()){
						out.print("<td><img src=\"Imagenes/" + f.getFoto()
						+ "\" width=\"50\" height=\"50\" class=\"rounded mx-auto d-block\"></td>"); //getFoto
					}
				}
				out.print("<td><a href=\"FichaJuego?id="+t.getId()+"\">"+t.getNombre()+"</a></td>");
				out.print("<td>"+t.getAnyo()+"</td>");
				out.print("<td>"+t.getGenero()+"</td>");
				out.print("<td>"+t.getPlataforma()+"</td>");
				out.print("<td>"+t.getPuntuacion()+"/10</td>");
				out.print("</tr>");
					count++;
				}
				}
			out.print("</tbody>");
			out.print("</table>");
			//-----------------------
			out.print("</div>");
			out.print("</div>");
			
		}
	%>
</body>
</html>