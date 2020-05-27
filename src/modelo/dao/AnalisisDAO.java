package modelo.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.slf4j.LoggerFactory;

import ch.qos.logback.classic.Logger;
import modelo.pojo.Analisis;
import modelo.pojo.Comentario;
import modelo.pojo.Foto;

/**
 * Clase para la conexión a la base de datos para el análisis
 * 
 * @author Cintia
 *
 */
public class AnalisisDAO {

	// Logger para captar errores
	private static final Logger logger = (Logger) LoggerFactory.getLogger(AnalisisDAO.class);

	/**
	 * Método que muestra una lista de análisis
	 * 
	 * @return devuelve una lista
	 */
	public ArrayList<Analisis> listaAnalisis() {
		
		ArrayList<Analisis> juego = null;
		
		try {

			// método de conexión
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM analisi");

				rs.last();
				if (rs.getRow() > 0) {

					rs.first();

					juego = new ArrayList<Analisis>();

					juego.add(new Analisis(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
							rs.getString("fecha"), rs.getString("analisi"), rs.getInt("idUsuario")));

					while (rs.next()) {
						juego.add(new Analisis(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
								rs.getString("fecha"), rs.getString("analisi"), rs.getInt("idUsuario")));
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
	 * Método que elimina un análisis
	 * 
	 * @param id = clave de identificación de un análisis
	 */
	public void deleteAnalisis(Integer id) {
		
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();

				String queryBorrar = " delete from analisi where id = " + id;

				stmt.executeUpdate(queryBorrar);
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

	/**
	 * Método que lista los análisis por id del usuario
	 * 
	 * @param id = clave de identificación del usuario
	 * @return devuelve una lista de análisis por usuario
	 */
	public ArrayList<Analisis> listaAnalisisPorIdUser(Integer id) {
		
		ArrayList<Analisis> guia = null;
		
		try {

			// método de conexión
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM Analisi where idUsuario = " + id);

				rs.last();
				if (rs.getRow() > 0) {

					rs.first();

					guia = new ArrayList<Analisis>();

					guia.add(new Analisis(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
							rs.getString("fecha"), rs.getString("analisi"), rs.getInt("idUsuario")));

					while (rs.next()) {

						guia.add(new Analisis(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
								rs.getString("fecha"), rs.getString("analisi"), rs.getInt("idUsuario")));
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
	 * Método que inserta un análisis
	 * 
	 * @param titulo    = titulo de la análisis
	 * @param texto     = texto en el que se quiera escribir en la análisis
	 * @param idUsuario = clave de identificación de un usuario
	 * @return devuelve el id generado del análisis
	 */
	public int insertAnalisi(String titulo, String descripcion, String fecha, String texto, Integer idUsuario) {
		
		int rowID = 0;
	
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO analisi (titulo, descripcion, fecha, analisi, idUsuario) VALUES ('" + titulo
					+ "', '" + descripcion + "','" + fecha + "','" + texto + "', " + idUsuario + ");";

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
	 * Método para actualizar un análisis
	 * 
	 * @param titulo = titulo del análisis
	 * @param texto  = texto en el que se quiera escribir en el análisis
	 * @param id     = clave de indetificación de un usuario
	 */
	public void updateAnalisi(String titulo, String descripcion, String texto, Integer id) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "update analisi set titulo = '" + titulo + "', descripcion = '" + descripcion
					+ "', analisi = '" + texto + "' where id = " + id;
			Statement stmt = connection.createStatement();
			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}

	}

	/**
	 * Método que inserta una foto para un análisis
	 * 
	 * @param foto       = párametro donde guarda el nombre de la foto
	 * @param idAnalisis = clave de identificación de un análaisis
	 */
	public void insertAnalisiFoto(String foto, Integer idAnalisis) {
		
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO fotoAnalisi (foto, idAnalisis) " + "VALUES ('" + foto + "'," + idAnalisis
					+ ");";
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

	/**
	 * Método que actualiza la foto de un análisis
	 * 
	 * @param foto       = párametro que guarda el nombre de la foto
	 * @param idAnalisis = clave de identificación de un análisis
	 */
	public void updateAnalisisFoto(String foto, Integer idAnalisis) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "update fotoAnalisi set foto = '" + foto + "' where idAnalisis = " + idAnalisis;
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

	/**
	 * Método que devuelve un análisis
	 * 
	 * @param id = clave de identificación de un análisis
	 * @return devuelve un análisis
	 */
	public Analisis analisis(Integer id) {

		Analisis juego = null;
		
		try {

			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from analisi where id = " + id + ";");

				rs.last();
				if (rs.getRow() > 0) {

					rs.first();
					juego = (new Analisis(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
							rs.getString("fecha"), rs.getString("analisi"), rs.getInt("idUsuario")));
				}

				rs.close();
			}

		} catch (Exception e) {
			logger.error(e.getMessage());
		}

		return juego;
	}

	/**
	 * Método para mostrar una lista de fotos de los análisis
	 * 
	 * @return devuelve una lista de fotos
	 */
	public ArrayList<Foto> listaFotosAnalisi() {
		
		ArrayList<Foto> Fjuego = null;
		
		try {

			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM fotoAnalisi");

				rs.last();
				if (rs.getRow() > 0) {

					rs.first();

					Fjuego = new ArrayList<Foto>();

					Fjuego.add(new Foto(rs.getInt("id"), rs.getString("foto"), rs.getInt("idAnalisis")));

					while (rs.next()) {

						Fjuego.add(new Foto(rs.getInt("id"), rs.getString("foto"), rs.getInt("idAnalisis")));
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
	 * Método que inserta un comentario en la ficha del análisis
	 * 
	 * @param comentario = es el párametro del comentario
	 * @param fecha      = párametro para introducir la fecha
	 * @param idUsuario  = es la clave que identifica al usuario
	 * @param idAnalisis = es la clave que identidica el análisis
	 * @return devuelve el id del comentario recien insertado
	 */
	public int insertComentarioAnalisis(String comentario, String fecha, Integer idUsuario, Integer idAnalisis) {
		
		int rowID = 0;
		
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO comentario_analisis (comentario, fecha, idUsuario, idAnalisis) " + "VALUES ('"
					+ comentario + "','" + fecha + "','" + idUsuario + "', '" + idAnalisis + "');";

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
	 * Método que muestra una lista de comentarios de los análisis
	 * @return devuelve una lista
	 */
	public ArrayList<Comentario> listaComentarioAnalisi() {
		
		ArrayList<Comentario> Cjuego = null;
		
		try {
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM comentario_analisis");

				rs.last();
				if (rs.getRow() > 0) {

					rs.first();

					Cjuego = new ArrayList<Comentario>();

					Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idAnalisis"),
							rs.getString("comentario"), rs.getString("fecha")));

					while (rs.next()) {

						Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idAnalisis"),
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
	 * Método para eliminar un comentario de la ficha de un análisis
	 * @param id = clave que identifica el comentario
	 */
	public void deleteComentarioAnalisis(Integer id) {
		
		try {

			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();

				String queryBorrar = "DELETE FROM comentario_analisis WHERE id=" + id + ";";

				stmt.executeUpdate(queryBorrar);
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

}
