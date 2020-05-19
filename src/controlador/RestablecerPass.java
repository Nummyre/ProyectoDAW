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
import modelo.pojo.Usuario;


@WebServlet("/RestablecerPass")
public class RestablecerPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	UsuariosEJB usuariosEJB;
	
	private static final Logger logger = (Logger) LoggerFactory.getLogger(RestablecerPass.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String error = request.getParameter("error");
		request.setAttribute("error", error);
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/RestablecerPass.jsp");
		rs.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		
		ArrayList<Email> emUser = usuariosEJB.listaEmail();
		
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
			
			for(Email u : emUser) {
				
				if(u.getNombre() != email) {
					
			// la persona k tiene k verificar
			message.setFrom(new InternetAddress("freakscorner2020@gmail.com"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			message.addHeader("Disposition-Notification-To", "freakscorner2020@gmail.com");
			message.setSubject("Correo de verificacion, porfavor no responder");
			message.setText("<h3>¡Hola!</h3>\n" + "<p>Dale click al enlace para restablecer la contraseña<br>"
					+ " <a href='http://localhost:8080/MiWeb/UpdatePassLogin?id="+u.getIdUsuario() + "'>Restablecer contraseña</p>",
					"UTF-8", "html");

			// Lo enviamos.
			Transport t = session.getTransport("smtp");
			t.connect("freakscorner2020@gmail.com", "123467hBp");
			t.sendMessage(message, message.getAllRecipients());
			// Cierre.
			t.close();
			
			RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/ConfirmacionEmailUpdate.jsp");
			rs.forward(request, response);
			
				}else {
					response.sendRedirect("RestablecerPass?error=hay");
				}
			}

	
		} catch (Exception e) {
			logger.debug(e.getMessage());
			logger.error(e.getMessage());
		}
		
		
	}

}
