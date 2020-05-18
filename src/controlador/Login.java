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

import modelo.pojo.Usuario;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	UsuariosEJB usuariosEJB;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
	
		
		// Intentamos obtener el usuario de la sesión
		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		if (usuario != null) {
			// Ya está logeado, lo redirigimos a la principal
			response.sendRedirect("Main");
		} else {
			RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Login.jsp");
			rs.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		
		String error = request.getParameter("error");
		
		request.setAttribute("error", error);

		if (session != null) {
			Usuario usuarios = (Usuario) session.getAttribute("usuario");

			if (usuarios != null) {
				// Enviarlo al Main
				System.out.println("1");
				response.sendRedirect("Main");
			}
		}
		// Variables para el usuario y el password
		String user = request.getParameter("usuario");
		String pass = request.getParameter("password");
	
		ArrayList<Usuario> us = usuariosEJB.listaUsuarios();
		
		for(Usuario uss : us) {
			
		// Si la sesion esta abierta
		if (user == uss.getUser() && pass == uss.getPassword()) {
			System.out.println("3");
			// Comprueba si el usuario existe
			Usuario usuario = usuariosEJB.existeUsuario(user, pass);

			// Si el usuario es nulo
			if (usuario != null) {
				System.out.println("2");
				// Cierra la session
				sesionesEJB.loginUsuario(session, usuario);
				
			}
			System.out.println("4"); //entra aquí
			response.sendRedirect("Main");
		}else{
			System.out.println("5");
			RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Login.jsp");
			rs.forward(request, response);
		
			
		}
			
		
	}
	}
}
