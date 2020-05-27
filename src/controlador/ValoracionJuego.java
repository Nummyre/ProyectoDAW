package controlador;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.ejb.JuegoEJB;

/**
 * Servlet para la valoración del juego
 * 
 * @author Cintia
 *
 */
@WebServlet("/ValoracionJuego")
public class ValoracionJuego extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@EJB
	JuegoEJB juegoEJB;

	/**
	 * doPost que inserta la valoración que ha puntuado un usuario
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String es = request.getParameter("estrellas");
		String idJ = request.getParameter("idJ"); // id del juego
		String idU = request.getParameter("idU"); // id del usuario

		Integer id = Integer.parseInt(idJ);
		Integer idUsu = Integer.parseInt(idU);
		Integer estrella = Integer.parseInt(es);

		juegoEJB.insertValoracion(estrella, id, idUsu);

		response.sendRedirect("FichaJuego?id=" + id);

	}
}
