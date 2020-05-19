package controlador;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.ejb.UsuariosEJB;


@WebServlet("/UpdatePassLogin")
public class UpdatePassLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	UsuariosEJB usuariosEJB;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String error = request.getParameter("bien");
		request.setAttribute("bien", error);
		request.setAttribute("id", id);
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/UpdatePassLogin.jsp");
		rs.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String pass = request.getParameter("password");
		String id = request.getParameter("id");
		
		Integer idU = Integer.parseInt(id);
		
		usuariosEJB.updatePassUsuario(pass, idU);
		
		response.sendRedirect("UpdatePassLogin?bien=hay");
		
		
	}

}
