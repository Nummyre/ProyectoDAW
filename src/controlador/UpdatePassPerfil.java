package controlador;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Usuario;

@WebServlet("/UpdatePassPerfil")
public class UpdatePassPerfil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String pass = request.getParameter("password");

		Integer idUser = Integer.parseInt(id);

		// Coge la sesion abierta
		HttpSession session = request.getSession(true);

		// Comprueba que el usuario esta logeado y tiene la sesion
		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		
		usuariosEJB.updatePassUsuario(pass, idUser);
		
		response.sendRedirect("Perfil");  //Poner en javascript un mensaje
	}

}
