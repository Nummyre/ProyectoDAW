package modelo.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.slf4j.LoggerFactory;

import ch.qos.logback.classic.Logger;
import modelo.pojo.Comentario;
import modelo.pojo.Foto;
import modelo.pojo.Guia;

/**
 * Clase para la conexión a la base de datos para la guía
 * 
 * @author Cintia
 *
 */
public class GuiasDAO {

	private static final Logger logger = (Logger) LoggerFactory.getLogger(GuiasDAO.class);

	/**
	 * Método que muestra una lista de guías
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Guia> listaGuias() {

		ArrayList<Guia> juego = null;

		try {

			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM guia");

				rs.last();
				if (rs.getRow() > 0) {

					rs.first();

					juego = new ArrayList<Guia>();

					juego.add(new Guia(rs.getInt("id"), rs.getString("titulo"), rs.getString("fecha"),
							rs.getString("guia"), rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Guia(rs.getInt("id"), rs.getString("titulo"), rs.getString("fecha"),
								rs.getString("guia"), rs.getInt("idUsuario")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return juego;
	}

	/**
	 * Método que inserta una foto para una guía
	 * 
	 * @param foto   = párametro donde guarda el nombre de la foto
	 * @param idGuia = clave de identificación de una guía
	 */
	public void insertGuiaFoto(String foto, Integer idGuia) {
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO fotoGuia (foto, idGuia) " + "VALUES ('" + foto + "'," + idGuia + ");";
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

	/**
	 * Método que elimina una guía
	 * 
	 * @param id = clave de identificación de una guía
	 */
	public void deleteGuia(Integer id) {
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();

				String queryBorrar = " delete from guia where id = " + id;

				stmt.executeUpdate(queryBorrar);
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

	/**
	 * Método que lista las guías por id del usuario
	 * 
	 * @param id = clave de identificación del usuario
	 * @return devuelve una lista de guías por usuario
	 */
	public ArrayList<Guia> listaGuiasPorIdUser(Integer id) {

		ArrayList<Guia> guia = null;

		try {

			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM guia where idUsuario = " + id);

				rs.last();
				if (rs.getRow() > 0) {

					rs.first();

					guia = new ArrayList<Guia>();
					guia.add(new Guia(rs.getInt("id"), rs.getString("titulo"), rs.getString("fecha"),
							rs.getString("guia"), rs.getInt("idUsuario")));
					;

					while (rs.next()) {

						guia.add(new Guia(rs.getInt("id"), rs.getString("titulo"), rs.getString("fecha"),
								rs.getString("guia"), rs.getInt("idUsuario")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return guia;
	}

	/**
	 * Método que inserta una guía
	 * 
	 * @param titulo    = titulo de la guía
	 * @param texto     = texto en el que se quiera escribir en la guía
	 * @param idUsuario = clave de identificación del usuario
	 * @return devuelve el id generado de la guía
	 */
	public int insertGuia(String titulo, String fecha, String texto, Integer idUsuario) {
		int rowID = 0;
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO guia (titulo, fecha, guia, idUsuario) " + "VALUES ('" + titulo + "','" + fecha
					+ "','" + texto + "', " + idUsuario + ");";

			try (Statement stmt = connection.createStatement()) {

				stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
				ResultSet rs = stmt.getGeneratedKeys();

				if (rs.next()) {
					rowID = rs.getInt(1);

				}
			} catch (Exception e) {

			}
			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return rowID;
	}

	/**
	 * Método para actualizar una guía
	 * 
	 * @param titulo = titulo de la guía
	 * @param texto  = texto en el que se quiera escribir en la guía
	 * @param id     = clave de identificación del usuario
	 */
	public void updateGuia(String titulo, String texto, Integer id) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "update guia set titulo = '" + titulo + "', guia = '" + texto + "' where id = " + id;
			Statement stmt = connection.createStatement();
			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}

	}

	/**
	 * Método que actualiza la foto de una guía
	 * 
	 * @param foto   = párametro que guarda el nombre de la foto
	 * @param idGuia = clave de identificación de guía
	 */
	public void updateGuiaFoto(String foto, Integer idGuia) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "update fotoGuia set foto = '" + foto + "' where idGuia = " + idGuia;
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

	/**
	 * Método que devuelve una guía
	 * 
	 * @param id = clave de identificación de una guía
	 * @return devuelve una guía
	 */
	public Guia guia(Integer id) {

		Guia juego = null;

		try {

			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from guia where id = " + id + ";");

				rs.last();
				if (rs.getRow() > 0) {

					rs.first();

					juego = (new Guia(rs.getInt("id"), rs.getString("titulo"), rs.getString("fecha"),
							rs.getString("guia"), rs.getInt("idUsuario")));
				}

				rs.close();
			}

		} catch (Exception e) {
			logger.error(e.getMessage());
		}

		return juego;
	}

	/**
	 * Método que muestra una lista de fotos de las guías
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Foto> listaFotosGuia() {

		ArrayList<Foto> Fjuego = null;

		try {

			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM fotoGuia");

				rs.last();
				if (rs.getRow() > 0) {

					rs.first();

					Fjuego = new ArrayList<Foto>();

					Fjuego.add(new Foto(rs.getInt("id"), rs.getString("foto"), rs.getInt("idGuia")));

					while (rs.next()) {

						Fjuego.add(new Foto(rs.getInt("id"), rs.getString("foto"), rs.getInt("idGuia")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return Fjuego;
	}

	/**
	 * Método que inserta un comentario en la ficha de la guía
	 * 
	 * @param comentario = pármetro del comentario
	 * @param fecha      = párametro para introducir una fecha
	 * @param idUsuario  = clave que identifica a un usuario
	 * @param idGuia     = cñave que identifica una guía
	 * @return devuelve el id del comentario insertado
	 */
	public int insertComentarioGuia(String comentario, String fecha, Integer idUsuario, Integer idGuia) {

		int rowID = 0;

		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO comentario_guia (comentario, fecha, idUsuario, idGuia) " + "VALUES ('"
					+ comentario + "','" + fecha + "'," + idUsuario + ", " + idGuia + ");";

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
	 * Método para mostrar una lista de comentarios de una guía
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Comentario> listaComentarioGuia() {

		ArrayList<Comentario> Cjuego = null;

		try {

			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM comentario_guia");

				rs.last();

				if (rs.getRow() > 0) {

					rs.first();

					Cjuego = new ArrayList<Comentario>();

					Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idGuia"),
							rs.getString("comentario"), rs.getString("fecha")));

					while (rs.next()) {

						Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idGuia"),
								rs.getString("comentario"), rs.getString("fecha")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return Cjuego;
	}

	/**
	 * Método para eliminar un comentario en ua ficha de la guía
	 * 
	 * @param id = clave que identifica el comentario
	 */
	public void deleteComentarioGuia(Integer id) {

		try {

			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();

				String queryBorrar = "DELETE FROM comentario_guia WHERE id=" + id + ";";

				stmt.executeUpdate(queryBorrar);
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

}
