package controlador.admin.guia;

import java.io.File;
import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.Part;

import modelo.ejb.GuiaEJB;

/**
 * Servlet que hace el update de la foto de una guía que se edita
 * 
 * @author Cintia
 *
 */
@WebServlet("/UpdateFotoGuia")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class UpdateFotoGuia extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private static final String UPLOAD_DIRECTORY = "Imagenes";

	@EJB
	GuiaEJB guiaEJB;

	/**
	 * doPost para hacer el update de la foto de una guía
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String idJuego = request.getParameter("idJuego"); // id de la guía
		Integer id = Integer.parseInt(idJuego);

		String idU = request.getParameter("id"); // id del usuario
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
			if (!nombre.equalsIgnoreCase("desconocido.txt")) {
				fileName = nombre;
				part.write(uploadPath + File.separator + fileName);
			}
		}

		guiaEJB.updateGuiaFoto(fileName, id);

		response.sendRedirect("EditarListaGuia?id=" + idUser);
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
