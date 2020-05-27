package controlador.admin.guia;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.ejb.GuiaEJB;

import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;

import modelo.pojo.Guia;

import modelo.pojo.Usuario;

/**
 * Servlet para editar una guía
 * 
 * @author Cintia
 *
 */
@WebServlet("/EditadoGuia")

public class EditadoGuia extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	GuiaEJB guiaEJB;

	@EJB
	SesionesEJB sesionesEJB;

	/**
	 * doGet que muestra la vista de editar una guía
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		 // id de la guía
		String idJ = request.getParameter("id");

		Integer id = Integer.parseInt(idJ);

		Guia juego = guiaEJB.guia(id);

		request.setAttribute("juego", juego);

		request.setAttribute("usuario", usuario);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/admin/EditadoGuia.jsp");
		rs.forward(request, response);

	}

	/**
	 * doPost para hacer el update en la guía
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String titulo = request.getParameter("titulo");
		String texto = request.getParameter("desc");

		// id de la guía
		String idJuego = request.getParameter("idJuego"); 
		Integer id = Integer.parseInt(idJuego);

		// id del usuario
		String idU = request.getParameter("id");
		Integer idUser = Integer.parseInt(idU);

		guiaEJB.updateGuia(titulo, texto, id);

		response.sendRedirect("EditarListaGuia?id=" + idUser);

	}

}
