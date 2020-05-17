package modelo.dao;

import java.sql.Statement;
import java.util.ArrayList;

import org.slf4j.LoggerFactory;

import ch.qos.logback.classic.Logger;
import modelo.pojo.Usuario;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuariosDAO {
	private static final Logger logger = (Logger) LoggerFactory.getLogger(UsuariosDAO.class);	
	public ArrayList<Usuario> listaUsuarios() {
		ArrayList<Usuario> user = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM usuario");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
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

	public void insertUsuario(String nombre, String user, String password, String foto, String email,
			String fechaAlta) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO usuario (nombre, user, password, foto, email, fechaAlta) " + "VALUES ('"
					+ nombre + "','" + user + "','" + password + "','" + foto + "','" + email + "','" + fechaAlta
					+ "');";
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

	public Usuario existeUsuario(String user, String pass) {

		Usuario usuario = null;
		try {

			// Si el usuario y la contraseña no son nulos que abra conexion mediante el
			// metodo
			if ((user != null) && (pass != null)) {
				Connection connection = new Conexion().conecta();
				Statement stmt = null;

				if (connection != null) {

					// Si la conexion no es nula que ejecute la query del select con los datos
					// obtenidos
					stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(
							"SELECT * FROM usuario WHERE user='" + user + "' AND password='" + pass + "'");

					rs.last();
					if (rs.getRow() > 0) {

						// Coge los datos del usuario que a iniciado sesion de la base de datos
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

	public void updateUsuario(String foto, Integer id) {
		// Se crea una conexion
		Connection connection = new Conexion().conecta();
		try {

			// Se hace el delete sobre el id
			String query = "update usuario set foto = '" + foto + "' where id =" + id;

			Statement stmt = connection.createStatement();

			// Ejecuta la query
			stmt.executeUpdate(query);

		} catch (SQLException e) {
			logger.error(e.getMessage());

		}
	}

	public void updatePassUsuario(String pass, Integer id) {

		// Se crea una conexion
		Connection connection = new Conexion().conecta();
		try {

			// Se hace el delete sobre el id
			String query = "update usuario set password = '" + pass + "' where id =" + id;

			Statement stmt = connection.createStatement();

			// Ejecuta la query
			stmt.executeUpdate(query);

		} catch (SQLException e) {
			logger.error(e.getMessage());

		}
	}
}