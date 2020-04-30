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
import modelo.pojo.Foto;
import modelo.pojo.Guia;
import modelo.pojo.Usuario;


@WebServlet("/FichaAnalisis")
public class FichaAnalisis extends HttpServlet {
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
		
		String idA = request.getParameter("id");
		Integer id = Integer.parseInt(idA);

		modelo.pojo.Analisis  analisis = juegoEJB.analisis(id);
		
		ArrayList<Foto> fotoAnalisis = juegoEJB.listaFotosAnalisi();
		
	
		ArrayList<Usuario> users = userEJB.listaUsuarios();
		
		ArrayList<Comentario> coment = juegoEJB.listaComentarioAnalisi();
		
		request.setAttribute("usuario", usuario);
		request.setAttribute("analisis", analisis);
		request.setAttribute("fotoAnalisis", fotoAnalisis);
		request.setAttribute("users", users);
		request.setAttribute("coment", coment);
		
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/fichas/FichaAnalisis.jsp");
		rs.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String comentario = request.getParameter("com");
		String idA = request.getParameter("idJ");
		String idU = request.getParameter("idU");
		
		Integer idAnalisis = Integer.parseInt(idA);
		Integer idUsuario = Integer.parseInt(idU);
		
		Date date = new Date();
		
		DateFormat hourdateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		
		juegoEJB.insertComentarioAnalisis(comentario, hourdateFormat.format(date), idUsuario, idAnalisis);
		
		response.sendRedirect("FichaAnalisis?id="+idAnalisis);
	}

}
