package controlador;

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
import modelo.pojo.Usuario;

/**
 * Servlet para mostrar ficha del hilo
 * 
 * @author Cintia
 *
 */
@WebServlet("/FichaHilo")
public class FichaHilo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * EJB para llamar los métodos
	 */
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	JuegoEJB juegoEJB;

	/**
	 * Doget para mostrar la ficha de hilo
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		String idH = request.getParameter("id");
		Integer id = Integer.parseInt(idH); // id del hilo creado

		modelo.pojo.Comunidad hilo = juegoEJB.hilo(id); // Muestra el hilo

		// Muestra una lista de los comentarios de ese hilo
		ArrayList<Comentario> coment = juegoEJB.listaComentarioComunidad();

		ArrayList<Usuario> users = usuariosEJB.listaUsuarios(); // Lista de usuarios

		request.setAttribute("hilo", hilo);
		request.setAttribute("coment", coment);
		request.setAttribute("usuario", usuario);
		request.setAttribute("users", users);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/fichas/FichaHilo.jsp");
		rs.forward(request, response);

	}

	/**
	 * Dopost para insertar los datos de los comentarios por los usuarios
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Parámetros que se coge desde la vista
		String comentario = request.getParameter("com");
		String idH = request.getParameter("idH"); // id hilo
		String idU = request.getParameter("idU"); // id del usuario

		Integer idHilo = Integer.parseInt(idH);
		Integer idUsuario = Integer.parseInt(idU);

		Date date = new Date(); // Se crea una fecha

		DateFormat hourdateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss"); // Se le da un formato

		// Se inserta el comentario del hilo con el formato de fecha
		juegoEJB.insertComentarioComunidad(comentario, hourdateFormat.format(date), idUsuario, idHilo);

		response.sendRedirect("FichaHilo?id=" + idHilo);
	}

}
