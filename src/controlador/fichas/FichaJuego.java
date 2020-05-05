package controlador.fichas;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

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
import modelo.pojo.Comentario;
import modelo.pojo.Foto;
import modelo.pojo.Genero;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;
import modelo.pojo.Puntuacion;
import modelo.pojo.Usuario;

@WebServlet("/FichaJuego")
public class FichaJuego extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	UsuariosEJB userEJB;
	
	@EJB
	SesionesEJB sesionEJB;
	
	@EJB
	JuegoEJB juegoEJB;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession(false);
		Usuario usuario = sesionEJB.usuarioLogeado(session);
		
		String idJ = request.getParameter("id");
		Integer id = Integer.parseInt(idJ);

		
		Juego juego = juegoEJB.juego(id);
		ArrayList<Foto> fotoJuego = juegoEJB.listaFotosJuegos();
		ArrayList<Genero> juegoG = juegoEJB.genero();
		ArrayList<Plataforma> juegoP = juegoEJB.plataforma();
		ArrayList<Usuario> users = userEJB.listaUsuarios();
		
		Puntuacion valoracion = juegoEJB.listaValoracion(id);
		
		ArrayList<Comentario> coment = juegoEJB.listaComentarioJuegos();
		
		request.setAttribute("valoracion", valoracion);
		request.setAttribute("users", users);
		request.setAttribute("plataforma", juegoP);
		request.setAttribute("genero", juegoG);
		request.setAttribute("juego", juego);
		request.setAttribute("usuario", usuario);
		request.setAttribute("fotoJuego", fotoJuego);
		request.setAttribute("coment", coment);
		
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/fichas/FichaJuego.jsp");
		rs.forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String comentario = request.getParameter("com");
		String idJ = request.getParameter("idJ");
		String idU = request.getParameter("idU");
		
		Integer idJuego = Integer.parseInt(idJ);
		Integer idUsuario = Integer.parseInt(idU);
		
		Date date = new Date();
		
		DateFormat hourdateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		
		juegoEJB.insertComentario(comentario, hourdateFormat.format(date), idUsuario, idJuego);
		
		response.sendRedirect("FichaJuego?id="+idJuego);
		
	}

}