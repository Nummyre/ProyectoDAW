package controlador.admin;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.ejb.AnalisisEJB;


/**
 * Servlet para borrar los comentarios de un análisis
 * @author Cintia
 *
 */
@WebServlet("/BorrarComentarioAnalisis")
public class BorrarComentarioAnalisis extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	
	@EJB
	AnalisisEJB analisisEJB;
 
	/**
	 * doGet para borrar el comentario
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 //id del comentario
		String id = request.getParameter("id");
		
		//id del análisis

		String idJ = request.getParameter("idJ"); 
		Integer idC = Integer.parseInt(id);
		Integer idAnalisi = Integer.parseInt(idJ);

		analisisEJB.deleteComentarioAnalisis(idC);
		

		response.sendRedirect("FichaAnalisis?id="+idAnalisi);
	}


}
