package controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;

import ch.qos.logback.classic.Logger;
import modelo.pojo.Usuario;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;

/**
 * Servlet para el inicio de sesión
 * 
 * @author Cintia
 *
 */
@WebServlet("/Login")
public class Login extends HttpServlet {

	private static final Logger logger = (Logger) LoggerFactory.getLogger(Login.class);

	private static final long serialVersionUID = 1L;

	// EJB para llamar los métodos del DAO
	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	UsuariosEJB usuariosEJB;

	/**
	 * doGet para mostrar la vista del inicio de sesión
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		// Intentamos obtener el usuario de la sesión
		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		if (usuario != null) {
			// Ya está logeado, lo redirigimos a la principal
			response.sendRedirect("Main");
		} else {
			
			RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Login.jsp");
			rs.forward(request, response);
		}

	}

	/**
	 * doPost que hace posible el inicio de sesión
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		try {

			if (session != null) {
				Usuario usuarios = (Usuario) session.getAttribute("usuario");

				if (usuarios != null) {
					// Enviarlo al Main
					response.sendRedirect("Main");
				}
			}
			// Variables para el usuario y el password
			String user = request.getParameter("usuario");
			String pass = request.getParameter("password");

			ArrayList<Usuario> us = usuariosEJB.listaUsuarios(); // Lista de usuarios

			// for para comparar en los usuarios los parámetros que se recoge en los inputs
			for (Usuario uss : us) {

				// Si la sesion esta abierta
				if (((user != null) && (user.equals(uss.getUser()))
						|| ((pass != null) && (pass.equals(uss.getPassword()))))) {

					// Comprueba si el usuario existe
					Usuario usuario = usuariosEJB.existeUsuario(user, pass);

					// Si el usuario es nulo
					if (usuario != null) {

						// Cierra la session
						sesionesEJB.loginUsuario(session, usuario);

					}

					response.sendRedirect("Main");

				}

			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
}
