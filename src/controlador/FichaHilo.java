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


@WebServlet("/FichaHilo")
public class FichaHilo extends HttpServlet {
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
		
		String idH = request.getParameter("id");
		Integer id = Integer.parseInt(idH);

		
		modelo.pojo.Comunidad hilo = juegoEJB.hilo(id);
		ArrayList<Comentario> coment = juegoEJB.listaComentarioComunidad();
		ArrayList<Usuario> users = usuariosEJB.listaUsuarios();
		
		request.setAttribute("hilo", hilo);
		request.setAttribute("coment", coment);
		request.setAttribute("usuario", usuario);
		request.setAttribute("users", users);

		
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/FichaHilo.jsp");
		rs.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String comentario = request.getParameter("com");
		String idH = request.getParameter("idH");
		String idU = request.getParameter("idU");
		
		Integer idHilo = Integer.parseInt(idH);
		Integer idUsuario = Integer.parseInt(idU);
		
		Date date = new Date();
		
		DateFormat hourdateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		
		juegoEJB.insertComentarioComunidad(comentario,  hourdateFormat.format(date), idUsuario, idHilo);
		
		response.sendRedirect("FichaHilo?id="+idHilo);
	}

}
