package controlador;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Usuario;


@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		

		request.setAttribute("usuario", usuario);
		System.out.println("doget-----"+usuario);
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Main.jsp");
		rs.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
