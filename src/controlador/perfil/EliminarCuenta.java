package controlador.perfil;

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

@WebServlet("/EliminarCuenta")
public class EliminarCuenta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//Coge la sesion abierta
		HttpSession session = request.getSession(true);

		//Comprueba que el usuario esta logeado y tiene la sesion
		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		//Coge el id del usuario y utiliza el metodo para borrarlo de la base de datos
			usuariosEJB.darseDeBaja(usuario.getId());
			
			//Cierra la sesion
			sesionesEJB.logoutUsuario(session);
			
			response.sendRedirect("Main"); // Hacer un jsp que de un mensaje del borrado de cuenta*
	}


}
