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
 * Servlet que muestra el top 10 (página default de top 10)
 * 
 * @author Cintia
 *
 */
@WebServlet("/Top10")
public class Top10 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	JuegoEJB juegoEJB;

	/**
	 * doGet que muestra los top 10
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		ArrayList<modelo.pojo.Top10> top = juegoEJB.listaTop10();
		ArrayList<Foto> foto = juegoEJB.listaFotosJuegos();

		request.setAttribute("foto", foto);
		request.setAttribute("usuario", usuario);
		request.setAttribute("top", top);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Top10.jsp");
		rs.forward(request, response);

	}

}
