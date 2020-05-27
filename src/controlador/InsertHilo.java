package controlador;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

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
import modelo.pojo.Usuario;

/**
 * Servlet para hacer el insert del hilo
 * 
 * @author Cintia
 *
 */
@WebServlet("/InsertHilo")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class InsertHilo extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// EJB para llamar los métodos del DAO
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	JuegoEJB juegoEJB;

	// Variable para subir los archivos a Imagenes
	private static final String UPLOAD_DIRECTORY = "Imagenes";

	/**
	 * doGet para mostrar la página para insertar el hilo
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		request.setAttribute("usuario", usuario);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/InsertHilo.jsp");
		rs.forward(request, response);
	}

	/**
	 * doPost para hacer el insert del hilo
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Hace que el texto sea formato utf-8
		request.setCharacterEncoding("UTF-8"); 

		// id del usuario
		String idU = request.getParameter("idU"); 
		
		// título
		String titulo = request.getParameter("titulo"); 
		
		// textarea
		String hilo = request.getParameter("editor1"); 

		Integer idUsuario = Integer.parseInt(idU);

		// Obtenemos una ruta en el servidor para guardar el archivo
		String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;

		// Si la ruta no existe la crearemos
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}

		// Lo utilizaremos para guardar el nombre del archivo
		String fileName = null;

		for (Part part : request.getParts()) {
			String nombre = getFileName(part);

			if (!nombre.equals("desconocido.txt") && !nombre.equals("")) {
				fileName = nombre;
				part.write(uploadPath + File.separator + fileName);
			}

		}

		Date date = new Date();

		DateFormat hourdateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");

		juegoEJB.insertHilo(titulo, hilo, hourdateFormat.format(date), idUsuario, fileName);

		response.sendRedirect("Comunidad");

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
