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
 * Servlet para mostrar la lista de guías a editar
 * 
 * @author Cintia
 *
 */
@WebServlet("/EditarListaGuia")
public class EditarListaGuia extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	GuiaEJB guiaEJB;

	@EJB
	SesionesEJB sesionesEJB;

	/**
	 * doGet que muestra la vista con la lista de guías por el id de usuario a
	 * editar
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		
		 // id del usuario
		String idJ = request.getParameter("id");

		Integer id = Integer.parseInt(idJ);

		ArrayList<Guia> juego = guiaEJB.listaGuiasPorIdUser(id);

		request.setAttribute("juego", juego);
		request.setAttribute("usuario", usuario);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/admin/EditarListaGuia.jsp");
		rs.forward(request, response);

	}
	
}
