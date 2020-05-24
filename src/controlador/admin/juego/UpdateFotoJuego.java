package controlador.admin.juego;

import java.io.File;
import java.io.IOException;

import javax.ejb.EJB;
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
import modelo.pojo.Usuario;


@WebServlet("/UpdateFotoJuego")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class UpdateFotoJuego extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	JuegoEJB juegoEJB;
	@EJB
	SesionesEJB sesionesEJB;
	
	private static final String UPLOAD_DIRECTORY = "Imagenes";
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Coge la sesion abierta
				HttpSession session = request.getSession(true);

				// Comprueba que el usuario esta logeado y tiene la sesion
				Usuario usuario = sesionesEJB.usuarioLogeado(session);
				
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
		String fileName = "desconocido.txt";

		// Obtenemos el archivo y lo guardamos a disco
		for (Part part : request.getParts()) {
			String nombre = getFileName(part);
			if(!nombre.equalsIgnoreCase("desconocido.txt")) {
				fileName = nombre;
				part.write(uploadPath + File.separator + fileName);
			}
		}
		
		
				juegoEJB.updateJuegoFoto(fileName, id);
				
				response.sendRedirect("Editar?id="+idUser);
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
