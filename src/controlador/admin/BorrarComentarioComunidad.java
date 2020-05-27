package controlador.admin;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import modelo.ejb.JuegoEJB;


/**
 * Servlet para borrar un comentario del hilo
 * @author Cintia
 *
 */
@WebServlet("/BorrarComentarioComunidad")
public class BorrarComentarioComunidad extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	@EJB
	JuegoEJB juegoEJB;
	
	/**
	 * doGet que borra el comentario de la comunidad
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String idJ = request.getParameter("idJ"); //id del hilo
		String id = request.getParameter("id"); //id del comentario
		
		Integer idC = Integer.parseInt(id);
		Integer idCo = Integer.parseInt(idJ);

		juegoEJB.deleteComentarioComunidad(idC);
		

		response.sendRedirect("FichaHilo?id="+idCo);
	}


}
