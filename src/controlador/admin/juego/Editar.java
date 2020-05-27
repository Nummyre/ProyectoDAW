package controlador.admin.juego;

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

import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Juego;
import modelo.pojo.Usuario;

/**
 * Servlet para mostrar la lista de juegos para editar
 * 
 * @author Cintia
 *
 */
@WebServlet("/Editar")
public class Editar extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	JuegoEJB juegoEJB;

	@EJB
	SesionesEJB sesionesEJB;

	/**
	 * doGet que muestra la lista de juegos por el id de usuario a editar
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		String idJ = request.getParameter("id");

		Integer id = Integer.parseInt(idJ);

		ArrayList<Juego> juego = juegoEJB.listaJuegosPorIdUser(id);

		request.setAttribute("juego", juego);
		request.setAttribute("usuario", usuario);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/admin/Editar.jsp");
		rs.forward(request, response);
	}

}
