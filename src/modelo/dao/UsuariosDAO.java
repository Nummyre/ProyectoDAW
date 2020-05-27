package modelo.dao;

import java.sql.Statement;
import java.util.ArrayList;

import org.slf4j.LoggerFactory;

import ch.qos.logback.classic.Logger;
import modelo.pojo.Email;
import modelo.pojo.Usuario;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Clase para la conexión a la base de datos para los usuarios
 * 
 * @author Cintia
 *
 */
public class UsuariosDAO {

	private static final Logger logger = (Logger) LoggerFactory.getLogger(UsuariosDAO.class);

	/**
	 * Método que muestra ua lista de usuarios
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Usuario> listaUsuarios() {

		ArrayList<Usuario> user = null;

		try {

			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM usuario");

				rs.last();
				if (rs.getRow() > 0) {

					rs.first();

					user = new ArrayList<Usuario>();

					user.add(new Usuario(rs.getInt("id"), rs.getString("nombre"), rs.getString("user"),
							rs.getString("password"), rs.getString("foto"), rs.getString("email"),
							rs.getString("fechaAlta"), rs.getInt("administrador")));

					while (rs.next()) {

						user.add(new Usuario(rs.getInt("id"), rs.getString("nombre"), rs.getString("user"),
								rs.getString("password"), rs.getString("foto"), rs.getString("email"),
								rs.getString("fechaAlta"), rs.getInt("administrador")));

					}
				}

				rs.close();
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return user;
	}

	/**
	 * Método que muestra una lista de los emails
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Email> listaEmail() {

		ArrayList<Email> email = null;

		try {

			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM email");

				rs.last();
				if (rs.getRow() > 0) {

					rs.first();

					email = new ArrayList<Email>();

					email.add(new Email(rs.getInt("id"), rs.getString("nombre"), rs.getString("idUsuario")));

					while (rs.next()) {

						email.add(new Email(rs.getInt("id"), rs.getString("nombre"), rs.getString("idUsuario")));

					}
				}

				rs.close();
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return email;
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

		int rowID = 0;

		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO usuario (nombre, user, password, foto, email, fechaAlta) " + "VALUES ('"
					+ nombre + "','" + user + "','" + password + "','" + foto + "','" + email + "','" + fechaAlta
					+ "');";
			try (Statement stmt = connection.createStatement()) {

				stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
				ResultSet rs = stmt.getGeneratedKeys();

				if (rs.next()) {
					rowID = rs.getInt(1);

				}
			} catch (Exception e) {
				logger.error(e.getMessage());
			}
			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return rowID;
	}

	/**
	 * Método para insertar un email
	 * 
	 * @param nombre    = nombre del email
	 * @param idUsuario = clave que identifica a un usuario
	 */
	public void insertEmail(String nombre, Integer idUsuario) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO email (nombre, idUsuario) " + "VALUES ('" + nombre + "','" + idUsuario + "');";
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

	/**
	 * Método para verificar la existencia de un usuario
	 * 
	 * @param user = nickName del user
	 * @param pass = contraseña
	 * @return devuelve un usuario
	 */
	public Usuario existeUsuario(String user, String pass) {

		Usuario usuario = null;

		try {

			if ((user != null) && (pass != null)) {
				Connection connection = new Conexion().conecta();
				Statement stmt = null;

				if (connection != null) {

					stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(
							"SELECT * FROM usuario WHERE user='" + user + "' AND password='" + pass + "'");

					rs.last();
					if (rs.getRow() > 0) {

						rs.first();
						usuario = new Usuario(rs.getInt("id"), rs.getString("nombre"), rs.getString("user"),
								rs.getString("password"), rs.getString("foto"), rs.getString("email"),
								rs.getString("fechaAlta"), rs.getInt("administrador"));
					}

					rs.close();
				}
			}

		} catch (Exception e) {
			logger.error(e.getMessage());
		}

		return usuario;
	}

	/**
	 * Método para darse de baja (eliminar una cuenta)
	 * 
	 * @param id = clave que identifica un usuario
	 */
	public void darseDeBaja(Integer id) {

		// Se crea una conexion
		Connection connection = new Conexion().conecta();
		try {

			// Se hace el delete sobre el id
			String query = "DELETE FROM usuario WHERE id=" + id;

			Statement stmt = connection.createStatement();

			// Ejecuta la query
			stmt.executeUpdate(query);

		} catch (SQLException e) {
			logger.error(e.getMessage());

		}

	}

	/**
	 * Método para actualizar la foto de perfil
	 * 
	 * @param foto = párametro de la foto
	 * @param id   = clave que identifica la foto
	 */
	public void updateUsuario(String foto, Integer id) {

		// Se crea una conexion
		Connection connection = new Conexion().conecta();
		try {

			String query = "update usuario set foto = '" + foto + "' where id =" + id;

			Statement stmt = connection.createStatement();

			// Ejecuta la query
			stmt.executeUpdate(query);

		} catch (SQLException e) {
			logger.error(e.getMessage());

		}
	}

	/**
	 * Método para actualizar la contraseña de un usuario
	 * 
	 * @param pass = contraseña
	 * @param id   = clave que identifica a un usuario
	 */
	public void updatePassUsuario(String pass, Integer id) {

		// Se crea una conexion
		Connection connection = new Conexion().conecta();
		try {

			String query = "update usuario set password = '" + pass + "' where id =" + id;

			Statement stmt = connection.createStatement();

			// Ejecuta la query
			stmt.executeUpdate(query);

		} catch (SQLException e) {
			logger.error(e.getMessage());

		}
	}
}