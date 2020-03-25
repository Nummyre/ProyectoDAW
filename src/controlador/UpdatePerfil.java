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

import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Usuario;

@WebServlet("/CambioPerfil")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class UpdatePerfil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	// Variable para guardar la imagen
	private static final String UPLOAD_DIRECTORY = "Imagenes";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");

		Integer idUser = Integer.parseInt(id);
		System.out.println("1");
		// Coge la sesion abierta
		HttpSession session = request.getSession(true);

		// Comprueba que el usuario esta logeado y tiene la sesion
		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		System.out.println("2");
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
		System.out.println("4");

		usuariosEJB.updateUsuario(fileName, idUser);

		System.out.println("5");

		response.sendRedirect("Perfil"); // Poner en javascript un mensaje

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
