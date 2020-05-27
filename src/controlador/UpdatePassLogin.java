package controlador;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.ejb.UsuariosEJB;

/**
 * Servlet que hace el update de la contraseña del login
 * 
 * @author Cintia
 *
 */
@WebServlet("/UpdatePassLogin")
public class UpdatePassLogin extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	/**
	 * doGet que muestra la vista para introducir la contraseña nueva
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");// Coge el id del usuario que ha sido enviado por la url
		String error = request.getParameter("bien");// Párametro que indica que ha sido cambiado correctamente

		request.setAttribute("bien", error);
		request.setAttribute("id", id);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/UpdatePassLogin.jsp");
		rs.forward(request, response);
	}

	/**
	 * doPost que hace el update de la contraseña
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pass = request.getParameter("password");
		String id = request.getParameter("id"); // id del usuario

		Integer idU = Integer.parseInt(id);

		usuariosEJB.updatePassUsuario(pass, idU);
		
		// redireciona a la página indicando que ha sido cambiado
		// correctamente
		response.sendRedirect("UpdatePassLogin?bien=hay");

	}

}
