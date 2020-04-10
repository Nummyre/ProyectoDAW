package controlador;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Genero;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;
import modelo.pojo.Usuario;

@WebServlet("/Add")

public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	JuegoEJB juegoEJB;

	@EJB
	SesionesEJB sesionesEJB;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		ArrayList<Genero> juego = juegoEJB.genero();
		ArrayList<Plataforma> juegoP = juegoEJB.plataforma();

		request.setAttribute("listaJuego", juego);
		request.setAttribute("usuario", usuario);
		request.setAttribute("plataforma", juegoP);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Add.jsp");
		rs.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String titulo = request.getParameter("titulo");
		String any = request.getParameter("anyo");
		String gen = request.getParameter("gen");
		String pla = request.getParameter("pla");
		String desc = request.getParameter("desc");
		String idUser = request.getParameter("id");


		Integer anyo = Integer.parseInt(any);
		Integer genero = Integer.parseInt(gen);
		Integer plataforma = Integer.parseInt(pla);
		Integer id = Integer.parseInt(idUser);
	
		juegoEJB.insertJuego(titulo, desc, anyo, genero, plataforma, id);
		

		response.sendRedirect("Login");

	}


}
