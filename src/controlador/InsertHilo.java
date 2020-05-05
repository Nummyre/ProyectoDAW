package controlador;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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


@WebServlet("/InsertHilo")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class InsertHilo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;
	
	@EJB
	JuegoEJB juegoEJB;
	
	private static final String UPLOAD_DIRECTORY = "Imagenes";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		 
		request.setAttribute("usuario", usuario);
		
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/InsertHilo.jsp");
		rs.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String idU = request.getParameter("idU");
		String titulo = request.getParameter("titulo");
		String hilo = request.getParameter("editor1");
		
		Integer idUsuario = Integer.parseInt(idU);
		
		
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
