package controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;

import javax.ejb.EJB;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.LoggerFactory;

import ch.qos.logback.classic.Logger;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Email;


/**
 * Servlet para restablecer la contraseña
 * 
 * @author Cintia
 *
 */
@WebServlet("/RestablecerPass")
public class RestablecerPass extends HttpServlet {

	private static final long serialVersionUID = 1L;

	// EJB para llamar los métodos del DAO
	@EJB
	UsuariosEJB usuariosEJB;

	// Logger para captar los errores
	private static final Logger logger = (Logger) LoggerFactory.getLogger(RestablecerPass.class);

	/**
	 * doGet que muestra la vista para introducir el email del usuario
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/RestablecerPass.jsp");
		rs.forward(request, response);
	}

	/**
	 * doPost que envia un correo al email del usuario que se ha olvidado de la
	 * contraseña
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Se coge el email del usuario
		String email = request.getParameter("email");

		// Muestra una lista de emails
		ArrayList<Email> em = usuariosEJB.listaEmail();

		try {
			// For para comparar el email introducido por uno de la tabla en la base de
			// datos
				for(Email u : em) {
	
				// Si el email es el mismo
				if (email.equals(u.getNombre())){

					// Propiedades de la conexión
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

					// la persona que tiene que verificar
					message.setFrom(new InternetAddress("freakscorner2020@gmail.com"));
					message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
					message.addHeader("Disposition-Notification-To", "freakscorner2020@gmail.com");
					message.setSubject("Correo de restablecer contraseña, porfavor no responder");

					// Se envia un correo con el id del usuario en el link para poder hacer el
					// update de la contraseña
					message.setText("<h3>¡Hola!</h3>\n" + "<p>Dale click al enlace para restablecer la contraseña<br>"
							+ " <a href='http://51.210.102.30:8080/MiWeb/UpdatePassLogin?id=" + u.getIdUsuario()
							+ "'>Restablecer contraseña</p>", "UTF-8", "html");

					// Lo enviamos.
					Transport t = session.getTransport("smtp");
					t.connect("freakscorner2020@gmail.com", "123467hBp");
					t.sendMessage(message, message.getAllRecipients());

					// Cierre.
					t.close();
					break;
				} 
			}
				
			
			RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/ConfirmacionEmailUpdate.jsp");
			rs.forward(request, response);

		} catch (Exception e) {
			logger.debug(e.getMessage());
			logger.error(e.getMessage());
		}

	}

}
