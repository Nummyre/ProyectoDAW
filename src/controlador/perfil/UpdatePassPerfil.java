package controlador.perfil;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;

/**
 * Servlet para hacer el update de la contraseña en el perfil
 * 
 * @author Cintia
 *
 */
@WebServlet("/UpdatePassPerfil")
public class UpdatePassPerfil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	/**
	 * doGet para hacer el update
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String pass = request.getParameter("password");

		Integer idUser = Integer.parseInt(id);

		usuariosEJB.updatePassUsuario(pass, idUser);

		response.sendRedirect("Perfil");
	}

}
