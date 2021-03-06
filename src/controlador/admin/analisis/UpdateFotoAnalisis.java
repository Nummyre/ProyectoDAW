package controlador.admin.analisis;

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

import modelo.ejb.AnalisisEJB;

/**
 * Servlet que hace el update de la foto de editar
 * 
 * @author Cintia
 *
 */
@WebServlet("/UpdateFotoAnalisis")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class UpdateFotoAnalisis extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private static final String UPLOAD_DIRECTORY = "Imagenes";

	@EJB
	AnalisisEJB analisisEJB;

	/**
	 * doPost que hace el update de la foto para editar un análisis
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		 // id del análisis
		String idJuego = request.getParameter("idJuego");
		Integer id = Integer.parseInt(idJuego);

		// id del usuario
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
			if (!nombre.equalsIgnoreCase("desconocido.txt")) {
				fileName = nombre;
				part.write(uploadPath + File.separator + fileName);
			}
		}

		// Hace el update en la foto de un análisis
		analisisEJB.updateAnalisisFoto(fileName, id);

		response.sendRedirect("EditarListaAnalisis?id=" + idUser);

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
