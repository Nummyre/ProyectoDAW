package modelo.ejb;

import java.util.ArrayList;


import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import modelo.dao.UsuariosDAO;
import modelo.pojo.Email;
import modelo.pojo.Usuario;

/**
 * Clase EJB para coger los métodos del DAO
 * 
 * @author Cintia
 *
 */
@Stateless
@LocalBean
public class UsuariosEJB {

	/**
	 * Método para verificar la existencia de un usuario
	 * 
	 * @param user = nickName del user
	 * @param pass = contraseña
	 * @return devuelve un usuario
	 */
	public Usuario existeUsuario(String user, String pass) {
		UsuariosDAO usuariosDAO = new UsuariosDAO();

		return usuariosDAO.existeUsuario(user, pass);
	}

	/**
	 * Método que inserta un usuario
	 * 
	 * @param nombre    = párametro del nombre de un usuario
	 * @param user      = párametro de nickName
	 * @param password  = párametro de la contraseña
	 * @param foto      = párametro para la foto de perfil
	 * @param email     = email del usuario
	 * @param fechaAlta = fecha de cuando se ha creado la cuenta
	 * @return devuelve el id del usuario que se acaba de crear
	 */
	public int insertUsuario(String nombre, String user, String password, String foto, String email, String fechaAlta) {
		UsuariosDAO usuariosDAO = new UsuariosDAO();

		return usuariosDAO.insertUsuario(nombre, user, password, foto, email, fechaAlta);
	}

	/**
	 * Método que muestra una lista de los emails
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Email> listaEmail() {
		UsuariosDAO usuariosDAO = new UsuariosDAO();

		return usuariosDAO.listaEmail();
	}

	/**
	 * Método para insertar un email
	 * 
	 * @param nombre    = nombre del email
	 * @param idUsuario = clave que identifica a un usuario
	 */
	public void insertEmail(String nombre, Integer idUsuario) {
		UsuariosDAO usuariosDAO = new UsuariosDAO();

		usuariosDAO.insertEmail(nombre, idUsuario);
	}

	/**
	 * Método para darse de baja (eliminar una cuenta)
	 * 
	 * @param id = clave que identifica un usuario
	 */
	public void darseDeBaja(Integer id) {
		UsuariosDAO usuariosDAO = new UsuariosDAO();

		usuariosDAO.darseDeBaja(id);
	}

	/**
	 * Método para actualizar la foto de perfil
	 * 
	 * @param foto = párametro de la foto
	 * @param id   = clave que identifica la foto
	 */
	public void updateUsuario(String foto, Integer id) {
		UsuariosDAO usuariosDAO = new UsuariosDAO();

		usuariosDAO.updateUsuario(foto, id);

	}

	/**
	 * Método para actualizar la contraseña de un usuario
	 * 
	 * @param pass = contraseña
	 * @param id   = clave que identifica a un usuario
	 */
	public void updatePassUsuario(String pass, Integer id) {
		UsuariosDAO usuariosDAO = new UsuariosDAO();
		usuariosDAO.updatePassUsuario(pass, id);
	}

	/**
	 * Método que muestra ua lista de usuarios
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Usuario> listaUsuarios() {
		UsuariosDAO usuariosDAO = new UsuariosDAO();
		return usuariosDAO.listaUsuarios();
	}
}