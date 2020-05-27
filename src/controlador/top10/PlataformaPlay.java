package controlador.top10;

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
import modelo.pojo.Foto;
import modelo.pojo.Usuario;

/**
 * Servlet que muestra el top 10 de Play Station 4
 * 
 * @author Cintia
 *
 */
@WebServlet("/PlataformaPlay")
public class PlataformaPlay extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	JuegoEJB juegoEJB;

	/**
	 * doGet para mostrar el top 10 de PS4
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		// id de la plataforma
		String idP = request.getParameter("id");
		Integer id = Integer.parseInt(idP);

		ArrayList<modelo.pojo.Top10> top = juegoEJB.listaTop10Plataformas(id);
		ArrayList<Foto> foto = juegoEJB.listaFotosJuegos();

		request.setAttribute("foto", foto);
		request.setAttribute("usuario", usuario);
		request.setAttribute("top", top);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/top10/Top10Play.jsp");
		rs.forward(request, response);
	}

}
