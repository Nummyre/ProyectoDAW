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
 * Servlet para borrar un comentario de la ficha juego
 * @author Cintia
 *
 */
@WebServlet("/BorrarComentarioJuego")
public class BorrarComentarioJuego extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	
	@EJB
	JuegoEJB juegoEJB;
	
	/**
	 * doGet que borra el comentario
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//id del comentario
		String id = request.getParameter("id");
		
		//id del juego
		String idJ = request.getParameter("idJ");

		Integer idC = Integer.parseInt(id);
		Integer idJuego = Integer.parseInt(idJ);

		juegoEJB.deleteComentarioJuego(idC);
		

		response.sendRedirect("FichaJuego?id="+idJuego);
	}



}
