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
import modelo.pojo.Juego;
import modelo.pojo.Usuario;


@WebServlet("/Xbox")
public class Xbox extends HttpServlet {
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
		 ArrayList<Juego> xboxList = juegoEJB.xboxList();
		

		request.setAttribute("usuario", usuario);
		request.setAttribute("xboxList", xboxList);
		
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Xbox.jsp");
		rs.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
