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

import modelo.ejb.AnalisisEJB;

import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Comentario;
import modelo.pojo.Foto;

import modelo.pojo.Usuario;

/**
 * Servlet que muestra la ficha del análisis
 * 
 * @author Cintia
 *
 */
@WebServlet("/FichaAnalisis")
public class FichaAnalisis extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB userEJB;

	@EJB
	SesionesEJB sesionEJB;

	@EJB
	AnalisisEJB analisisEJB;

	/**
	 * doGet que muestra la vista de la ficha de un análisis
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionEJB.usuarioLogeado(session);

		String idA = request.getParameter("id"); // id del análisis
		Integer id = Integer.parseInt(idA);

		modelo.pojo.Analisis analisis = analisisEJB.analisis(id); // muestra un análisis por su id

		ArrayList<Foto> fotoAnalisis = analisisEJB.listaFotosAnalisi();// muetsra una lista de fotos de los analisis

		ArrayList<Usuario> users = userEJB.listaUsuarios();// muestra a los usuarios

		ArrayList<Comentario> coment = analisisEJB.listaComentarioAnalisi();// muestra una lista de comentarios

		request.setAttribute("usuario", usuario);
		request.setAttribute("analisis", analisis);
		request.setAttribute("fotoAnalisis", fotoAnalisis);
		request.setAttribute("users", users);
		request.setAttribute("coment", coment);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/fichas/FichaAnalisis.jsp");
		rs.forward(request, response);
	}

	/**
	 * doPost para añadir un comentario a la ficha del análisis
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String comentario = request.getParameter("com");
		String idA = request.getParameter("idJ"); // id del análisis
		String idU = request.getParameter("idU"); // id del usuario

		Integer idAnalisis = Integer.parseInt(idA);
		Integer idUsuario = Integer.parseInt(idU);

		Date date = new Date();

		DateFormat hourdateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");

		analisisEJB.insertComentarioAnalisis(comentario, hourdateFormat.format(date), idUsuario, idAnalisis);

		response.sendRedirect("FichaAnalisis?id=" + idAnalisis);
	}

}
