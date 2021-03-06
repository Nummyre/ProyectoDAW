package controlador.perfil;

import java.io.File;
import java.io.IOException;

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

import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Usuario;

/**
 * Servlet para hacer update de la foto de perfil
 * 
 * @author Cintia
 *
 */
@WebServlet("/UpdatePerfil")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class UpdatePerfil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	// Variable para guardar la imagen
	private static final String UPLOAD_DIRECTORY = "Imagenes";

	/**
	 * doPost para hacer el update de la foto de perfil
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");

		Integer idUser = Integer.parseInt(id);

		// Coge la sesion abierta
		HttpSession session = request.getSession(true);

		// Comprueba que el usuario esta logeado y tiene la sesion
		Usuario usuario = sesionesEJB.usuarioLogeado(session);

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

		usuariosEJB.updateUsuario(fileName, idUser);

		// Coge el usuario de la sesión y le inserta la foto nueva
		Usuario u = (Usuario) session.getAttribute("usuario");
		u.setFoto(fileName);

		session.setAttribute("usuario", u);
		request.setAttribute("usuario", usuario);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Perfil.jsp");
		rs.forward(request, response);

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
