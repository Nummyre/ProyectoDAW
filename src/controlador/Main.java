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

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Genero;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;
import modelo.pojo.PopurriMain;
import modelo.pojo.Usuario;


@WebServlet("/Main")
public class Main extends HttpServlet {
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
		
//		ArrayList<PopurriMain> main = juegoEJB.listaMain();
		
		ArrayList<Juego> juego = juegoEJB.listaJuego();
		ArrayList<modelo.pojo.Guia> guia = juegoEJB.listaGuias();
		ArrayList<modelo.pojo.Analisis> analisi = juegoEJB.listaAnalisis();
		ArrayList<Genero> genero = juegoEJB.genero();
		ArrayList<Plataforma> plata = juegoEJB.plataforma();
		
		
		
		
		request.setAttribute("juego", juego);
		request.setAttribute("genero", genero);
		request.setAttribute("plataforma", plata);
		request.setAttribute("guia", guia);
		request.setAttribute("analisi", analisi);
		
		
		request.setAttribute("usuario", usuario);
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Main.jsp");
		rs.forward(request, response);
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
	}

}
