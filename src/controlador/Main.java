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

import modelo.ejb.AnalisisEJB;
import modelo.ejb.GuiaEJB;
import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Foto;
import modelo.pojo.Genero;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;

import modelo.pojo.Usuario;

/**
 * Servlet para la página principal
 * @author Cintia
 *
 */
@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	/**
	 * EJB para llamar a los métodos
	 */
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;
	
	@EJB
	JuegoEJB juegoEJB;
	
	
	@EJB
	GuiaEJB guiaEJB;
	
	
	@EJB
	AnalisisEJB analisisEJB;
	
	/**
	 * Doget para mostrar el contenido de la página prncipal
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		
		ArrayList<Juego> juego = juegoEJB.listaJuego();
		ArrayList<modelo.pojo.Guia> guia = guiaEJB.listaGuias();
		ArrayList<modelo.pojo.Analisis> analisi = analisisEJB.listaAnalisis();
		ArrayList<Genero> genero = juegoEJB.genero();
		ArrayList<Plataforma> plata = juegoEJB.plataforma();
		ArrayList<Foto> juegoFoto = juegoEJB.listaFotosJuegos();
		ArrayList<Foto> GuiaFoto = guiaEJB.listaFotosGuia();
		ArrayList<Foto> analisisFoto = analisisEJB.listaFotosAnalisi();
		
		
		request.setAttribute("juegoFoto", juegoFoto);
		request.setAttribute("guiaFoto", GuiaFoto);
		request.setAttribute("analisisFoto", analisisFoto);
		
		request.setAttribute("juego", juego);
		request.setAttribute("genero", genero);
		request.setAttribute("plataforma", plata);
		request.setAttribute("guia", guia);
		request.setAttribute("analisi", analisi);
		
		
		request.setAttribute("usuario", usuario);
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Main.jsp");
		rs.forward(request, response);
	}
	

}
