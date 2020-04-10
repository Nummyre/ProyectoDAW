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
import modelo.pojo.Plataforma;
import modelo.pojo.Usuario;

@WebServlet("/Editar")
public class Editado extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	JuegoEJB juegoEJB;

	@EJB
	SesionesEJB sesionesEJB;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		
		String idJ = request.getParameter("id");
		
		Integer id = Integer.parseInt(idJ);
		
		ArrayList<Genero> juegoG = juegoEJB.genero();
		ArrayList<Plataforma> juegoP = juegoEJB.plataforma();
		
		Juego juego = juegoEJB.juego(id);
		
		request.setAttribute("juego", juego);
		request.setAttribute("plataforma", juegoP);
		request.setAttribute("genero", juegoG);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Editado.jsp");
		rs.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
