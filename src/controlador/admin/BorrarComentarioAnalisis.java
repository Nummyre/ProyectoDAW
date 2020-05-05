package controlador.admin;

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


@WebServlet("/BorrarComentarioAnalisis")
public class BorrarComentarioAnalisis extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;
	
	@EJB
	JuegoEJB juegoEJB;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		String id = request.getParameter("id");
		String idJ = request.getParameter("idJ");

		Integer idC = Integer.parseInt(id);
		Integer idAnalisi = Integer.parseInt(idJ);

		juegoEJB.deleteComentarioAnalisis(idC);
		

		response.sendRedirect("FichaAnalisis?id="+idAnalisi);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}