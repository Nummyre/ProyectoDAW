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
import modelo.pojo.ValoracionLista;

/**
 * Servlet para la ficha del juego
 * 
 * @author Cintia
 *
 */
@WebServlet("/FichaJuego")
public class FichaJuego extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB userEJB;

	@EJB
	SesionesEJB sesionEJB;

	@EJB
	JuegoEJB juegoEJB;

	/**
	 * doGet que muestra la vista de la ficha del juego
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		Usuario usuario = sesionEJB.usuarioLogeado(session);

		String idJ = request.getParameter("id");
		Integer id = Integer.parseInt(idJ);

		Juego juego = juegoEJB.juego(id); // muestra el juego

		ArrayList<Foto> fotoJuego = juegoEJB.listaFotosJuegos(); // muestra una lista de fotos del juego

		ArrayList<Genero> juegoG = juegoEJB.genero(); // muestra los géneros

		ArrayList<Plataforma> juegoP = juegoEJB.plataforma(); // muestra una lista de plataformas

		ArrayList<Usuario> users = userEJB.listaUsuarios();// muestra a los usuarios

		ArrayList<ValoracionLista> valoracion = juegoEJB.listaValoracion();// muestra una list de valoraciones

		Puntuacion puntos = juegoEJB.valoracionJuego(id);// muestra la puntuación del juego

		ArrayList<Comentario> coment = juegoEJB.listaComentarioJuegos();

		request.setAttribute("valoracion", valoracion);
		request.setAttribute("puntos", puntos);
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

	/**
	 * doPost que hace el insert de un comentario en la ficha del juego
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String comentario = request.getParameter("com");
		String idJ = request.getParameter("idJ"); // id de la ficha del juego
		String idU = request.getParameter("idU"); // id del usuario

		Integer idJuego = Integer.parseInt(idJ);
		Integer idUsuario = Integer.parseInt(idU);

		Date date = new Date();

		DateFormat hourdateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");

		juegoEJB.insertComentario(comentario, hourdateFormat.format(date), idUsuario, idJuego);

		response.sendRedirect("FichaJuego?id=" + idJuego);

	}

}
