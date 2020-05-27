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
 * 
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		// Muestra una lista de juegos
		ArrayList<Juego> juego = juegoEJB.listaJuego(); 
		
		// Muestra una lista de guías
		ArrayList<modelo.pojo.Guia> guia = guiaEJB.listaGuias();
		
		// Muestra una lista de análisis
		ArrayList<modelo.pojo.Analisis> analisi = analisisEJB.listaAnalisis();

		// Muestra una lista de géneros
		ArrayList<Genero> genero = juegoEJB.genero();
		
		// Muestra una lista de plataformas
		ArrayList<Plataforma> plata = juegoEJB.plataforma();

		// Muestra una lista de fotos de juegos
		ArrayList<Foto> juegoFoto = juegoEJB.listaFotosJuegos();
		
		// Muestra una lista de fotos de guías
		ArrayList<Foto> GuiaFoto = guiaEJB.listaFotosGuia();
		
		// Muestra una lista de fotos de análisis
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
