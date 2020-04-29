package controlador.admin.guia;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Usuario;


@WebServlet("/BorradoGuia")
public class BorradoGuia extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	JuegoEJB juegoEJB;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		String id = request.getParameter("id");

		Integer idJ = Integer.parseInt(id);

		juegoEJB.deleteGuia(idJ);
		

		response.sendRedirect("BorrarListaGuia?id="+usuario.getId());
	}


}
