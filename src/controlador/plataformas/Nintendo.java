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
 * Servlet para mostrar la página principal de nintendo
 * 
 * @author Nummyre
 *
 */
@WebServlet("/Nintendo")
public class Nintendo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	JuegoEJB juegoEJB;

	/**
	 * doGet que muestra la página principal de nintendo (plataformas)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		ArrayList<PlataformasJuegos> nintendoList = juegoEJB.nintendoList();

		request.setAttribute("usuario", usuario);
		request.setAttribute("nintendoList", nintendoList);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/plataformas/Nintendo.jsp");
		rs.forward(request, response);

	}

}
