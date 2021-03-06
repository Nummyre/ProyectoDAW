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
 * Servlet para mostrar una lista de los análisis para borrar
 * 
 * @author Cintia
 *
 */
@WebServlet("/BorrarListaAnalisis")
public class BorrarListaAnalisis extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	AnalisisEJB analisisEJB;

	/**
	 * doGet para mostrar el listado de análisis por el id del usuario a borrar
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		String iduser = request.getParameter("id");

		Integer id = Integer.parseInt(iduser);

		ArrayList<Analisis> analisi = analisisEJB.listaAnalisisPorIdUser(id);

		request.setAttribute("usuario", usuario);
		request.setAttribute("listaJuego", analisi);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/admin/BorrarAnalisis.jsp");
		rs.forward(request, response);
	}

}
