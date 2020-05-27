package modelo.ejb;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.servlet.http.HttpSession;

import modelo.pojo.Usuario;

/**
 * Clase para establecer las sesiones de los usuarios
 * 
 * @author Cintia
 *
 * 
 */

@Stateless
@LocalBean
public class SesionesEJB {

	/**
	 * Metodo para comprobar si el usuario tiene la sesion abierta
	 * 
	 * @param session
	 * @return devuelve la sesion de un usuario
	 */
	public Usuario usuarioLogeado(HttpSession session) {
		Usuario usuario = null;

		if (session != null) {
			usuario = (Usuario) session.getAttribute("usuario");
		}

		return usuario;
	}

	/**
	 * Metodo para comprobar el id de un usuario logeado
	 * 
	 * @param session
	 * @return
	 */
	public Usuario usuarioLogeadoId(HttpSession session) {
		Usuario key = null;

		if (session != null) {
			key = (Usuario) session.getAttribute("id");
		}

		return key;
	}

	/**
	 * Metodo para el login de un usuario
	 * 
	 * @param session
	 * @param usuario
	 */
	public void loginUsuario(HttpSession session, Usuario usuario) {
		if (session != null) {
			session.setAttribute("usuario", usuario);

		}
	}

	/**
	 * Metodo para cerrar la sesion a un usuario
	 * 
	 * @param session
	 */
	public void logoutUsuario(HttpSession session) {
		if (session != null) {
			session.invalidate();
		}

	}
}
