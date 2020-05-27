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
import modelo.ejb.GuiaEJB;
import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Foto;
import modelo.pojo.Usuario;

/**
 * Servlet para la página principal de guía
 * 
 * @author Cintia
 *
 */
@WebServlet("/Guia")
public class Guia extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// EJB para llamar los métodos del DAO
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	SesionesEJB sesionesEJB;

	@EJB
	JuegoEJB juegoEJB;

	@EJB
	GuiaEJB guiaEJB;

	/**
	 * Doget para mostrar la página principal de guías
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);

		// Muestra una lista de guías
		ArrayList<modelo.pojo.Guia> guias = guiaEJB.listaGuias(); 
		
		// Muestra una lista de fotos de las guías
		ArrayList<Foto> fotoGuia = guiaEJB.listaFotosGuia(); 

		request.setAttribute("foto", fotoGuia);
		request.setAttribute("usuario", usuario);
		request.setAttribute("guias", guias);

		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/Guia.jsp");
		rs.forward(request, response);
	}

}
