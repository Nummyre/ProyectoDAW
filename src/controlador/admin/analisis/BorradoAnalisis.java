package controlador.admin.analisis;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.ejb.AnalisisEJB;

import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Usuario;

/**
 * Servlet para borrar un análisis
 * 
 * @author Cintia
 *
 */
@WebServlet("/BorradoAnalisis")
public class BorradoAnalisis extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@EJB
	AnalisisEJB analisisEJB;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	/**
	 * doGet para borrar el análisis
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		// id del análisis
		String id = request.getParameter("id"); 

		Integer idJ = Integer.parseInt(id);

		analisisEJB.deleteAnalisis(idJ);

		response.sendRedirect("BorrarListaAnalisis?id=" + usuario.getId());
	}

}
