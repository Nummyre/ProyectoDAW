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

import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Juego;
import modelo.pojo.Usuario;

@WebServlet("/ValoracionJuego")
public class ValoracionJuego extends HttpServlet {
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
		
		String es = request.getParameter("estrellas");
		String idJ = request.getParameter("idJ");
		String idU = request.getParameter("idU");
		
		Integer id = Integer.parseInt(idJ);
		Integer idUsu = Integer.parseInt(idU);
		Integer estrella = Integer.parseInt(es);
		
		juegoEJB.insertValoracion(estrella, id, idUsu);
		
		response.sendRedirect("FichaJuego?id="+id);
		
	}

	

}
