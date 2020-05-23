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
import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Foto;
import modelo.pojo.Usuario;

/**
 * Servlet para el análisis
 * @author Cintia
 *
 */
@WebServlet("/Analisis")
public class Analisis extends HttpServlet {
	
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
	AnalisisEJB analisisEJB;
	
	/**
	 * Doget para mostrar el contenido de análisis
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		
		 ArrayList<modelo.pojo.Analisis> analisis = analisisEJB.listaAnalisis();
		 ArrayList<Foto> fotoAnali = analisisEJB.listaFotosAnalisi();

		 request.setAttribute("foto", fotoAnali);
		request.setAttribute("usuario", usuario);
		request.setAttribute("analisis", analisis);
		
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Analisis.jsp");
		rs.forward(request, response);
	}


}
