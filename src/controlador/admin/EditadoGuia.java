package controlador.admin;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Genero;
import modelo.pojo.Guia;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;
import modelo.pojo.Usuario;

@WebServlet("/EditadoGuia")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class EditadoGuia extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIRECTORY = "Imagenes";
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	JuegoEJB juegoEJB;

	@EJB
	SesionesEJB sesionesEJB;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		
		String idJ = request.getParameter("id");
		
		Integer id = Integer.parseInt(idJ);
		
	
		
		Guia juego = juegoEJB.guia(id);
		
		System.out.println(id);
		
		request.setAttribute("juego", juego);

		request.setAttribute("usuario", usuario);
		
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/admin/EditadoGuia.jsp");
		rs.forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String titulo = request.getParameter("titulo");
		String texto = request.getParameter("desc");
		String idJuego = request.getParameter("idJuego");
		Integer id = Integer.parseInt(idJuego);
		String idU = request.getParameter("id");
		Integer idUser = Integer.parseInt(idU);
		
		
		// Multipart RFC 7578

		// Obtenemos una ruta en el servidor para guardar el archivo
		String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;

		// Si la ruta no existe la crearemos
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}

		// Lo utilizaremos para guardar el nombre del archivo
		String fileName = null;

		// Obtenemos el archivo y lo guardamos a disco
		for (Part part : request.getParts()) {
			fileName = getFileName(part);
			part.write(uploadPath + File.separator + fileName);
		}
		
//		juegoEJB.updateJuego(titulo, desc, anyo, genero, plataforma, id);
		
		juegoEJB.updateGuia(titulo, texto, id);
//		
//		juegoEJB.updateJuegoFoto(fileName, id);
		
		juegoEJB.updateGuiaFoto(fileName, id);

		response.sendRedirect("EditarListaGuia?id="+idUser);
		
	}
	
	// Obtiene el nombre del archivo, sino lo llamaremos desconocido.txt
		private String getFileName(Part part) {
			for (String content : part.getHeader("content-disposition").split(";")) {
				if (content.trim().startsWith("filename"))
					return content.substring(content.indexOf("=") + 2, content.length() - 1);
			}
			return "desconocido.txt";
		}

}
