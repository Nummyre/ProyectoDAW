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
		
		String error = request.getParameter("error");
		
		// Intentamos obtener el usuario de la sesión
		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		if (usuario != null) {
			// Ya está logeado, lo redirigimos a la principal
			response.sendRedirect("Main");
		} else {
			request.setAttribute("error", error);
			RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Login.jsp");
			rs.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		
		

		if (session != null) {
			Usuario usuarios = (Usuario) session.getAttribute("usuario");

			if (usuarios != null) {
				// Enviarlo al Main
			
				response.sendRedirect("Main");
			}
		}
		// Variables para el usuario y el password
		String user = request.getParameter("usuario");
		String pass = request.getParameter("password");
	
		ArrayList<Usuario> us = usuariosEJB.listaUsuarios();
		
		for(Usuario uss : us) {
			
		// Si la sesion esta abierta
		if (((user != null) && (user.equals(uss.getUser()))||((pass!=null) && (pass.equals(uss.getPassword()))))) {
			
			// Comprueba si el usuario existe
			Usuario usuario = usuariosEJB.existeUsuario(user, pass);

			// Si el usuario es nulo
			if (usuario != null) {
			
				// Cierra la session
				sesionesEJB.loginUsuario(session, usuario);
				
			}
			
			response.sendRedirect("Main");
		}else{
		
			response.sendRedirect("Login?error=hay");
		
			
		}
			
		
	}
	}
}
