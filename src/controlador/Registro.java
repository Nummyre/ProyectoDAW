package controlador;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.ejb.EJB;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.slf4j.LoggerFactory;

import ch.qos.logback.classic.Logger;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;

@WebServlet("/Registro")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class Registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final Logger logger = (Logger) LoggerFactory.getLogger(Registro.class);

	// Variable para guardar la imagen
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


		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		String nombre = request.getParameter("nom");
		String email = request.getParameter("email");

		Date date = new Date();

		DateFormat hourdateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");

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

		try {
			// Propiedades de la conexi�n
			Properties props = new Properties();
			props.setProperty("mail.smtp.host", "smtp.gmail.com");
			props.setProperty("mail.smtp.starttls.enable", "true");
			props.setProperty("mail.smtp.port", "587");
			props.setProperty("mail.smtp.user", "freakscorner2020@gmail.com");
			props.setProperty("mail.smtp.auth", "true");

			// Preparamos la sesion
			Session session = Session.getDefaultInstance(props);

			// Construimos el mensaje
			MimeMessage message = new MimeMessage(session);
			// la persona k tiene k verificar
			message.setFrom(new InternetAddress("freakscorner2020@gmail.com"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			message.addHeader("Disposition-Notification-To", "freakscorner2020@gmail.com");
			message.setSubject("Correo de verificacion, porfavor no responder");
			message.setText("<h3>¡Hola " + user + "!</h3>\n" + "<p>Gracias por unirte a Freak's Corner<br>"
					+ "Porfavor haga un buen uso de su cuenta y respete siempre la opinión de los demás.<br>"
					+ "Debe seguir las normas de uso de la cuenta:<br>" + "1.No insultar ni difamar a nadie.<br>"
					+ "2.No crear bulos ni rumores.<br>" + "3.No suplantar la identidad de ningún individuo.<br>"
					+ "4.Respete siempre a otro usuario.<br>"
					+ "Si no se sigue las normas, se baneara la cuenta dependiendo de la gravedad.\n"
					+ "Bienvenido a Freak's Corner y diviertete en nuestra comunidad.<br>"
					+ " <a href='http://localhost:8080/MiWeb/Login" + "'>Inicia Sesión en Freak's Corner</a> </p>",
					"UTF-8", "html");

			// Lo enviamos.
			Transport t = session.getTransport("smtp");
			t.connect("freakscorner2020@gmail.com", "123467hBp");
			t.sendMessage(message, message.getAllRecipients());

			// Cierre.
			t.close();
		} catch (Exception e) {
			logger.debug(e.getMessage());
			logger.error(e.getMessage());
		}

		// Metodo para registrar al usuario
		int idUser = usuariosEJB.insertUsuario(nombre, user, pass, fileName, email, hourdateFormat.format(date));
		
		usuariosEJB.insertEmail(email, idUser);

		response.sendRedirect("Login");

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
