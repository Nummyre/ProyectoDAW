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
 * 
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
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false); // Se coge la sesión

		Usuario usuario = sesionesEJB.usuarioLogeado(session); // Se coge el usuario que ha sido logeado en la sesión

		ArrayList<modelo.pojo.Analisis> analisis = analisisEJB.listaAnalisis(); // Lista para mostrar los análisis
		ArrayList<Foto> fotoAnali = analisisEJB.listaFotosAnalisi(); // Lista para mostrar las fotos de los análisis

		request.setAttribute("foto", fotoAnali);// Se coge el parametro de la lista de fotos de análisis
		request.setAttribute("usuario", usuario);
		request.setAttribute("analisis", analisis);

		// Se pasa los atributos de los parametros a la vista
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Analisis.jsp");
		rs.forward(request, response);
	}

}
