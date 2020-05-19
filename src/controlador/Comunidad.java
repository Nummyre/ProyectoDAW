package controlador;

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
import modelo.pojo.Usuario;

/**
 * Servlet para Comunidad
 * @author Cintia
 *
 */
@WebServlet("/Comunidad")
public class Comunidad extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	/**
	 * EJB para llamar a los métodos
	 */
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;
	
	@EJB
	JuegoEJB juegoEJB;

	/**
	 * Doget para mostrar el contenido de comunidad
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		
		 ArrayList<modelo.pojo.Comunidad> comunidad = juegoEJB.listaHilos();
		 ArrayList<modelo.pojo.Usuario> users = usuariosEJB.listaUsuarios();
		 
		request.setAttribute("usuario", usuario);
		request.setAttribute("comunidad", comunidad);
		request.setAttribute("users", users);
		
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Comunidad.jsp");
		rs.forward(request, response);
	}


}
