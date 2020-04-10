package controlador;

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
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Usuario;


@WebServlet("/AddFotoJuego")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class AddFotoJuego extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIRECTORY = "Imagenes";
       
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	JuegoEJB juegoEJB;

	@EJB
	SesionesEJB sesionesEJB;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		
		Integer idGuia = 0;
		Integer idAnali = 0;
		
		// Multipart RFC 7578

				// Obtenemos una ruta en el servidor para guardar el archivo
				String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;

				// Si la ruta no existe la crearemos
				File uploadDir = new File(uploadPath);
				if (!uploadDir.exists()) {
					uploadDir.mkdir();
				}
				System.out.println("3");

				// Lo utilizaremos para guardar el nombre del archivo
				String fileName = null;

				// Obtenemos el archivo y lo guardamos a disco
				for (Part part : request.getParts()) {
					fileName = getFileName(part);
					part.write(uploadPath + File.separator + fileName);
				}
				
//				juegoEJB.insertJuegoFoto(fileName, id, idGuia, idAnali);
		
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
