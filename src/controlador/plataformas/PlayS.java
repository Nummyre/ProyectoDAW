package controlador.plataformas;

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

import modelo.pojo.PlataformasJuegos;
import modelo.pojo.Usuario;

/**
 * Servlet que muestra la página principal de play station 4
 * 
 * @author Cintia
 *
 */
@WebServlet("/PlayS")
public class PlayS extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	JuegoEJB juegoEJB;

	/**
	 * doGet que muestra la página principal de play station 4 (plataformas)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		ArrayList<PlataformasJuegos> playSList = juegoEJB.playSList();

		request.setAttribute("usuario", usuario);
		request.setAttribute("playSList", playSList);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/plataformas/PlayS.jsp");
		rs.forward(request, response);
	}

}
