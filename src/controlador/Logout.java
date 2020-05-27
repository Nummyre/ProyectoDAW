package controlador;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.ejb.SesionesEJB;

/**
 * Servlet para cerrar sesión
 * 
 * @author Cintia
 *
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// EJB para llamar a los métodos del DAO
	@EJB
	SesionesEJB sesionesEJB;

	/**
	 * doGet para cerrar la sesión
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);

		if (session != null) {
			// Cerramos la sesión
			sesionesEJB.logoutUsuario(session);
		}

		// Redirigimos a la página principal
		response.sendRedirect("Main");
	}
}
