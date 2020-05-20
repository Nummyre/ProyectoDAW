package controlador.admin.guia;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import modelo.ejb.GuiaEJB;
import modelo.ejb.JuegoEJB;
import modelo.ejb.SesionesEJB;
import modelo.ejb.UsuariosEJB;
import modelo.pojo.Genero;
import modelo.pojo.Guia;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;
import modelo.pojo.Usuario;

@WebServlet("/EditadoGuia")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5)
public class EditadoGuia extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIRECTORY = "Imagenes";
	@EJB
	UsuariosEJB usuariosEJB;

	@EJB
	GuiaEJB guiaEJB;

	@EJB
	SesionesEJB sesionesEJB;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		HttpSession session = request.getSession(false);

		Usuario usuario = sesionesEJB.usuarioLogeado(session);
		
		String idJ = request.getParameter("id");
		
		Integer id = Integer.parseInt(idJ);
		
	
		
		Guia juego = guiaEJB.guia(id);

		
		request.setAttribute("juego", juego);

		request.setAttribute("usuario", usuario);
		
		RequestDispatcher rs = getServletContext().getRequestDispatcher("/vista/admin/EditadoGuia.jsp");
		rs.forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String titulo = request.getParameter("titulo");
		String texto = request.getParameter("desc");
		String idJuego = request.getParameter("idJuego");
		Integer id = Integer.parseInt(idJuego);
		String idU = request.getParameter("id");
		Integer idUser = Integer.parseInt(idU);
		
		
		guiaEJB.updateGuia(titulo, texto, id);		


		response.sendRedirect("EditarListaGuia?id="+idUser);
		
	}
	


}
