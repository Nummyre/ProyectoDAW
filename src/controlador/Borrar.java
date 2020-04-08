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
import modelo.pojo.Genero;
import modelo.pojo.Juego;
import modelo.pojo.Usuario;


@WebServlet("/Borrar")
public class Borrar extends HttpServlet {
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
		String iduser = request.getParameter("id");
		Integer id = Integer.parseInt(iduser);
		
		ArrayList<Juego> juego = juegoEJB.listaJuegosPorIdUser(id);

		request.setAttribute("usuario", usuario);
		request.setAttribute("listaJuego", juego);
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Borrar.jsp");
		rs.forward(request, response);
		
	}

	

}
