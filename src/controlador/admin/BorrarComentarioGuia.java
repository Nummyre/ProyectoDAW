package controlador.admin;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.ejb.GuiaEJB;

/**
 * Servlet que borra comentario de una guía
 * 
 * @author Cintia
 *
 */
@WebServlet("/BorrarComentarioGuia")
public class BorrarComentarioGuia extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	GuiaEJB guiaEJB;

	/**
	 * doGet para borrar el comentario
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// id del comentario
		String id = request.getParameter("id");
		
		// id de la guía
		String idJ = request.getParameter("idJ"); 

		Integer idC = Integer.parseInt(id);
		Integer idGuia = Integer.parseInt(idJ);

		guiaEJB.deleteComentarioGuia(idC);

		response.sendRedirect("FichaGuia?id=" + idGuia);
	}

}
