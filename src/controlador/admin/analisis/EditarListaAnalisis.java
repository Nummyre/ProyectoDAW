package controlador.admin.analisis;

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

import modelo.ejb.AnalisisEJB;
import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Analisis;
import modelo.pojo.Guia;
import modelo.pojo.Usuario;


@WebServlet("/EditarListaAnalisis")
public class EditarListaAnalisis extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	AnalisisEJB analisisEJB;

	@EJB
	SesionesEJB sesionesEJB;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		
		String idJ = request.getParameter("id");
		
		Integer id = Integer.parseInt(idJ);
		
		ArrayList<Analisis> juego = analisisEJB.listaAnalisisPorIdUser(id);
		
		request.setAttribute("juego", juego);
		request.setAttribute("usuario",usuario);
		

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/admin/EditarListaAnalisis.jsp");
		rs.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
