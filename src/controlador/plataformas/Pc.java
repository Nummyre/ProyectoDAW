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
 * Servlet que muestra la página principal de Pc
 * 
 * @author Cintia
 *
 */
@WebServlet("/Pc")
public class Pc extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	JuegoEJB juegoEJB;

	/**
	 * doGet que muesta la página principal de pc (plataformas)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		ArrayList<PlataformasJuegos> pcList = juegoEJB.pcList();

		request.setAttribute("usuario", usuario);
		request.setAttribute("pcList", pcList);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/plataformas/Pc.jsp");
		rs.forward(request, response);
	}

}
