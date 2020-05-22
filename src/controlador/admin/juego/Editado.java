package controlador.admin.juego;


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

@WebServlet("/Editado")

public class Editado extends HttpServlet {
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

		String idJ = request.getParameter("id");

		Integer id = Integer.parseInt(idJ);

		ArrayList<Genero> juegoG = juegoEJB.genero();
		ArrayList<Plataforma> juegoP = juegoEJB.plataforma();

		Juego juego = juegoEJB.juego(id);

		request.setAttribute("juego", juego);
		request.setAttribute("plataforma", juegoP);
		request.setAttribute("genero", juegoG);
		request.setAttribute("usuario", usuario);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/admin/Editado.jsp");
		rs.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		request.setCharacterEncoding("UTF-8");
		String titulo = request.getParameter("titulo");
		String any = request.getParameter("anyo");
		String gen = request.getParameter("gen");
		String pla = request.getParameter("pla");
		String desc = request.getParameter("desc");
		String idJuego = request.getParameter("idJuego");
		String idU = request.getParameter("id");
		Integer idUsuario = Integer.parseInt(idU);

		Integer anyo = Integer.parseInt(any);
		Integer genero = Integer.parseInt(gen);
		Integer plataforma = Integer.parseInt(pla);
		Integer id = Integer.parseInt(idJuego);


		juegoEJB.updateJuego(titulo, desc, anyo, genero, plataforma, id);


		response.sendRedirect("Editar?id="+idUsuario);

	}


}
