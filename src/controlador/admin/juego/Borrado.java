package controlador.admin.juego;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Usuario;

/**
 * Servlet que borra un juego
 * 
 * @author Cintia
 *
 */
@WebServlet("/Borrado")
public class Borrado extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	JuegoEJB juegoEJB;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	/**
	 * doGet que borra un juego seleccionado
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		String id = request.getParameter("id"); // id del juego

		Integer idJ = Integer.parseInt(id);

		juegoEJB.deleteJuego(idJ);

		response.sendRedirect("Borrar?id=" + usuario.getId());
	}

}
