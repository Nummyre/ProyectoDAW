package controlador.admin.guia;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.ejb.GuiaEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Usuario;

/**
 * Servlet que borra una guía
 * 
 * @author Nummyre
 *
 */
@WebServlet("/BorradoGuia")
public class BorradoGuia extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	GuiaEJB guiaEJB;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	/**
	 * doGet que borra una guía
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		// id de la guía
		String id = request.getParameter("id"); 

		Integer idJ = Integer.parseInt(id);

		guiaEJB.deleteGuia(idJ);

		response.sendRedirect("BorrarListaGuia?id=" + usuario.getId());
	}

}
