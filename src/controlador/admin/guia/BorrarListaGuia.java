package controlador.admin.guia;

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

import modelo.ejb.GuiaEJB;

import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Guia;
import modelo.pojo.Usuario;

/**
 * Servlet que muestra la lista de guías a borrar
 * 
 * @author Cintia
 *
 */
@WebServlet("/BorrarListaGuia")
public class BorrarListaGuia extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	GuiaEJB guiaEJB;

	/**
	 * doGet para mostrar la vista de lista de guías por el id de usuario a borrar
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		String iduser = request.getParameter("id");
		Integer id = Integer.parseInt(iduser);

		ArrayList<Guia> guia = guiaEJB.listaGuiasPorIdUser(id);

		request.setAttribute("usuario", usuario);
		request.setAttribute("listaJuego", guia);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/admin/BorrarGuia.jsp");
		rs.forward(request, response);

	}

}
