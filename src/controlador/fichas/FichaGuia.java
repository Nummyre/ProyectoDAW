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

import modelo.ejb.GuiaEJB;
import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Comentario;
import modelo.pojo.Foto;
import modelo.pojo.Genero;
import modelo.pojo.Guia;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;
import modelo.pojo.Usuario;

@WebServlet("/FichaGuia")
public class FichaGuia extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	UsuariosEJB userEJB;
	
	@EJB
	SesionesEJB sesionEJB;
	
	@EJB
	GuiaEJB guiaEJB;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession(false);
		
		Usuario usuario = sesionEJB.usuarioLogeado(session);
		
		String idG = request.getParameter("id");
		Integer id = Integer.parseInt(idG);

		Guia  guia = guiaEJB.guia(id);
		
		ArrayList<Foto> fotoGuia = guiaEJB.listaFotosGuia();
		
		ArrayList<Usuario> users = userEJB.listaUsuarios();
		
		ArrayList<Comentario> coment = guiaEJB.listaComentarioGuia();
		
		request.setAttribute("usuario", usuario);
		request.setAttribute("guia", guia);
		request.setAttribute("fotoGuia", fotoGuia);
		request.setAttribute("users", users);
		request.setAttribute("coment", coment);
		
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/fichas/FichaGuia.jsp");
		rs.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String comentario = request.getParameter("com");
		String idG = request.getParameter("idJ");
		String idU = request.getParameter("idU");
		
		Integer idGuia = Integer.parseInt(idG);
		Integer idUsuario = Integer.parseInt(idU);
		
		Date date = new Date();
		
		DateFormat hourdateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		
		guiaEJB.insertComentarioGuia(comentario, hourdateFormat.format(date),idUsuario, idGuia);
		
		response.sendRedirect("FichaGuia?id="+idGuia);
		
	}

}
