package controlador;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;

@WebServlet("/Registro")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	//Variable para guardar la imagen
	private static final String UPLOAD_DIRECTORY = "Imagenes";
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Registro.jsp");
		rs.forward(request, response);

		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
		

		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String nombre = request.getParameter("nom");
		String email = request.getParameter("email");
		String foto = request.getParameter("foto");
		Date fechaAlta = new Date();

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
		
		
		
		// Metodo para registrar al usuario
		usuariosEJB.insertUsuario(nombre, user, pass, fileName, email, fechaAlta);

		response.sendRedirect("Login");
		}catch (Exception e) {
		e.printStackTrace();
		}

	}

	// Obtiene el nombre del archivo, sino lo llamaremos desconocido.txt
	private String getFileName(Part part) {
		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("fileName"))
				return content.substring(content.indexOf("=") + 2, content.length() - 1);
		}
		return "desconocido.txt";
	}

}
