package controlador.admin.analisis;

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

import modelo.ejb.AnalisisEJB;

import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Analisis;

import modelo.pojo.Usuario;

/**
 * Servlet que muestra la vista de la lista de los análisis
 * 
 * @author Cintia
 *
 */
@WebServlet("/EditarListaAnalisis")
public class EditarListaAnalisis extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	AnalisisEJB analisisEJB;

	@EJB
	SesionesEJB sesionesEJB;

	/**
	 * doGet que muestra la vista para la lista de los análisis por el id del
	 * usuario a editar
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		 // id del usuario
		String idJ = request.getParameter("id");

		Integer id = Integer.parseInt(idJ);

		 // listado de análisis
		ArrayList<Analisis> juego = analisisEJB.listaAnalisisPorIdUser(id);

		request.setAttribute("juego", juego);
		request.setAttribute("usuario", usuario);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/admin/EditarListaAnalisis.jsp");
		rs.forward(request, response);
	}

}
