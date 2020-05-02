package modelo.dao;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import modelo.pojo.Analisis;
import modelo.pojo.Comentario;
import modelo.pojo.Foto;
import modelo.pojo.Genero;
import modelo.pojo.Guia;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;
import modelo.pojo.Puntuacion;
import modelo.pojo.Top10;

public class JuegosDAO {

	/**
	 * Método para listar los juegos
	 * 
	 * @return una lista de juegos
	 */
	public ArrayList<Juego> listaJuegos() {
		ArrayList<Juego> juego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM juego");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					juego = new ArrayList<Juego>();

					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"), rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
								rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
								rs.getInt("idUsuario")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return juego;
	}

	
	//-----------------------------------------------------------------------------------------------
	
	public ArrayList<Guia> listaGuias() {
		ArrayList<Guia> juego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM guia");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					juego = new ArrayList<Guia>();

					juego.add(new Guia(rs.getInt("id"), rs.getString("titulo"), rs.getString("guia"),
							rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Guia(rs.getInt("id"), rs.getString("titulo"), rs.getString("guia"),
								rs.getInt("idUsuario")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return juego;
	}
	//-------------------------------------------------------------------------------------------
	
	
	public ArrayList<Analisis> listaAnalisis() {
		ArrayList<Analisis> juego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM analisi");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					juego = new ArrayList<Analisis>();

					juego.add(new Analisis(rs.getInt("id"), rs.getString("titulo"), rs.getString("analisi"),
							rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Analisis(rs.getInt("id"), rs.getString("titulo"), rs.getString("analisi"),
								rs.getInt("idUsuario")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return juego;
	}
	
	// -----------------------------------------------------------------------------------

	/**
	 * Método que elimina un juego
	 * 
	 * @param id = clave de identificación del juego
	 */
	public void deleteJuego(Integer id) {
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();

				String queryBorrar = "DELETE FROM juego WHERE id=" + id + ";";

				stmt.executeUpdate(queryBorrar);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ----------------------------------------------------------------------------------------

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
			e.printStackTrace();
		}
	}

	// -------------------------------------------------------------------------------------------

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
			e.printStackTrace();
		}
	}

	// --------------------------------------------------------------------------------------------------------

	/**
	 * Método que muestra una lista de juegos por el id de usuario
	 * 
	 * @param id = clave de identificación del usuario
	 * @return devuelve una lista de juegos por usuario
	 */
	public ArrayList<Juego> listaJuegosPorIdUser(Integer id) {
		ArrayList<Juego> juego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM juego where idUsuario = " + id);

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					juego = new ArrayList<Juego>();

					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"), rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
								rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
								rs.getInt("idUsuario")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return juego;
	}

	// ----------------------------------------------------------------------------------------

	/**
	 * Método que lista las guías por id del usuario
	 * 
	 * @param id = clave de identificación del usuario
	 * @return devuelve una lista de guías por usuario
	 */

	public ArrayList<Guia> listaGuiasPorIdUser(Integer id) {
		ArrayList<Guia> guia = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM guia where idUsuario = " + id);

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					guia = new ArrayList<Guia>();

					guia.add(new Guia(rs.getInt("id"), rs.getString("titulo"), rs.getString("guia"),
							rs.getInt("idUsuario")));

					while (rs.next()) {

						guia.add(new Guia(rs.getInt("id"), rs.getString("titulo"), rs.getString("guia"),
								rs.getInt("idUsuario")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return guia;
	}

	// --------------------------------------------------------------------------------

	/**
	 * Método que lista los análisis por id del usuario
	 * 
	 * @param id = clave de identificación del usuario
	 * @return devuelve una lista de análisis por usuario
	 */
	public ArrayList<Analisis> listaAnalisisPorIdUser(Integer id) {
		ArrayList<Analisis> guia = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM Analisi where idUsuario = " + id);

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					guia = new ArrayList<Analisis>();

					guia.add(new Analisis(rs.getInt("id"), rs.getString("titulo"), rs.getString("analisi"),
							rs.getInt("idUsuario")));

					while (rs.next()) {

						guia.add(new Analisis(rs.getInt("id"), rs.getString("titulo"), rs.getString("analisi"),
								rs.getInt("idUsuario")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return guia;
	}

	// ------------------------------------------------------------------------------------------

	/**
	 * Método que muestra una lista de los géneros
	 * 
	 * @return devuelve una lista de géneros
	 */
	public ArrayList<Genero> genero() {
		ArrayList<Genero> juego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from genero");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<Genero>();

					juego.add(new Genero(rs.getInt("id"), rs.getString("nombre")));

					while (rs.next()) {

						juego.add(new Genero(rs.getInt("id"), rs.getString("nombre")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return juego;

	}

	// ----------------------------------------------------------------------------------------

	/**
	 * Método que devuelve una lista de plataformas
	 * 
	 * @return devuelve una lista de plataformas
	 */
	public ArrayList<Plataforma> plataforma() {

		ArrayList<Plataforma> juego = null;

		try {

			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from plataforma");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<Plataforma>();

					juego.add(new Plataforma(rs.getInt("id"), rs.getString("nombre")));

					while (rs.next()) {

						juego.add(new Plataforma(rs.getInt("id"), rs.getString("nombre")));
					}
				}

				rs.close();

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return juego;
	}

	// -----------------------------------------------------------------------------------------------------

	/**
	 * Método que inserta un juego
	 * 
	 * @param titulo = titulo del juego
	 * @param desc   = descripción del juego
	 * @param anyo   = año que se lanzó el juego
	 * @param idGen  = clave de identificación de la tabla género
	 * @param idPla  = clave de identificación de la tabla plataformas
	 * @param idUser = clade de identificación del usuario
	 * @return devuelve el id del juego insertado
	 */
	public int insertJuego(String titulo, String desc, Integer anyo, Integer idGen, Integer idPla, Integer idUser) {
		int rowID = 0;
		try {

			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO juego (titulo, descripcion, anyo, puntuacion, idGenero, idPlataforma, idUsuario) "
					+ "VALUES ('" + titulo + "','" + desc + "','" + anyo + "',0,'" + idGen + "','" + idPla + "','"
					+ idUser + "');";

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
			e.printStackTrace();
		}
		return rowID;
	}

	// --------------------------------------------------------------------------------------------------------

	/**
	 * Método que inserta una guía
	 * 
	 * @param titulo    = titulo de la guía
	 * @param texto     = texto en el que se quiera escribir en la guía
	 * @param idUsuario = clave de identificación del usuario
	 * @return devuelve el id generado de la guía
	 */
	public int insertGuia(String titulo, String texto, Integer idUsuario) {
		int rowID = 0;
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO guia (titulo, guia, idUsuario) " + "VALUES ('" + titulo + "','" + texto + "', "
					+ idUsuario + ");";

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
			e.printStackTrace();
		}
		return rowID;
	}

	// ----------------------------------------------------------------------------------------------------------

	/**
	 * Método que inserta un análisis
	 * 
	 * @param titulo    = titulo de la análisis
	 * @param texto     = texto en el que se quiera escribir en la análisis
	 * @param idUsuario = clave de identificación de un usuario
	 * @return devuelve el id generado del análisis
	 */
	public int insertAnalisi(String titulo, String texto, Integer idUsuario) {
		int rowID = 0;
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO analisi (titulo, analisi, idUsuario) " + "VALUES ('" + titulo + "','" + texto
					+ "', " + idUsuario + ");";

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
			e.printStackTrace();
		}
		return rowID;
	}

	// ------------------------------------------------------------------------------------------

	/**
	 * Método para actualizar un juego
	 * 
	 * @param titulo  = titulo del juego
	 * @param desc    = descripción del juego
	 * @param anyo    = año en el que lanzó el juego
	 * @param idGen   = clave de identificación de la tabla género
	 * @param idPla   = clave de identificación de la tabla plataformas
	 * @param idJuego = clave de indetificación del juego
	 */
	public void updateJuego(String titulo, String desc, Integer anyo, Integer idGen, Integer idPla, Integer idJuego) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "update juego set titulo = '" + titulo + "', Descripcion = '" + desc + "', anyo = " + anyo
					+ ", idGenero = " + idGen + ", idPlataforma = " + idPla + " where id = " + idJuego;
			Statement stmt = connection.createStatement();
			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// -----------------------------------------------------------------------------------------------------

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
			e.printStackTrace();
		}

	}

//------------------------------------------------------------------------------------------------------

	/**
	 * Método para actualizar un análisis
	 * 
	 * @param titulo = titulo del análisis
	 * @param texto  = texto en el que se quiera escribir en el análisis
	 * @param id     = clave de indetificación de un usuario
	 */

	public void updateAnalisi(String titulo, String texto, Integer id) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "update analisi set titulo = '" + titulo + "', guia = '" + texto + "' where id = " + id;
			Statement stmt = connection.createStatement();
			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// --------------------------------------------------------------------------------------------------------

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
			e.printStackTrace();
		}
	}

	// ----------------------------------------------------------------------------------------------------------

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
			e.printStackTrace();
		}
	}

	// -------------------------------------------------------------------------------------------------

	/**
	 * Método que inserta una foto para un juego
	 * 
	 * @param foto    = párametro donde guarda el nombre de la foto
	 * @param idJuego = clave de identificación de un juego
	 */
	public void insertJuegoFoto(String foto, Integer idJuego) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO fotoJuego (foto, idJuego) " + "VALUES ('" + foto + "'," + idJuego + ");";
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// --------------------------------------------------------------------------------------------------------------

	/**
	 * Método que actualiza la foto de un juego
	 * 
	 * @param foto    = párametro donde guarda el nombre de la foto
	 * @param idJuego = clave de identificación de un juego
	 */
	public void updateJuegoFoto(String foto, Integer idJuego) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "update fotoJuego set foto = " + foto + " where idJuego = " + idJuego;
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// -----------------------------------------------------------------------------------------------------

	/**
	 * Método que actualiza la foto de una guía
	 * 
	 * @param foto   = párametro que guarda el nombre de la foto
	 * @param idGuia = clave de identificación de guía
	 */
	public void updateGuiaFoto(String foto, Integer idGuia) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "update fotoGuia set foto = " + foto + " where idJuego = " + idGuia;
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ----------------------------------------------------------------------------------------------------------

	/**
	 * Método que actualiza la foto de un análisis
	 * 
	 * @param foto       = párametro que guarda el nombre de la foto
	 * @param idAnalisis = clave de identificación de un análisis
	 */
	public void updateAnalisisFoto(String foto, Integer idAnalisis) {

		try {
			Connection connection = new Conexion().conecta();

			String query = "update fotoAnalisi set foto = " + foto + " where idJuego = " + idAnalisis;
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// -------------------------------------------------------------------------------------------------------

	/**
	 * Método que muestra una lista de juegos relacionados con nintendo
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<Juego> nintendoList() {
		ArrayList<Juego> juego = null;
		try {
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from juego where idPlataforma = 3;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<Juego>();

					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"), rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
								rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
								rs.getInt("idUsuario")));
					}
				}

				rs.close();

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return juego;

	}

	// -------------------------------------------------------------------------------------------------------------

	/**
	 * Método que devuelve una lista realacionada con juegos de xbox
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<Juego> xboxList() {
		ArrayList<Juego> juego = null;
		try {
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from juego where idPlataforma = 2;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<Juego>();

					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"), rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
								rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
								rs.getInt("idUsuario")));
					}
				}

				rs.close();

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return juego;

	}

	// --------------------------------------------------------------------------------------------------------------

	/**
	 * Método que devuelve una lista relacionada con los juegos de PlayStation
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<Juego> playSList() {
		ArrayList<Juego> juego = null;
		try {
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from juego where idPlataforma = 1;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<Juego>();

					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"), rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
								rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
								rs.getInt("idUsuario")));
					}
				}

				rs.close();

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return juego;

	}

	// -------------------------------------------------------------------------------------------------

	/**
	 * Método ue devuelve una lista relacionada con los juegos de PC
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<Juego> pcList() {
		ArrayList<Juego> juego = null;
		try {
			Connection connection = new Conexion().conecta();

			if (connection != null) {
				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from juego where idPlataforma = 4;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<Juego>();

					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"), rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
								rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
								rs.getInt("idUsuario")));
					}
				}

				rs.close();

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return juego;

	}

	// -------------------------------------------------------------------------------------------------

	/**
	 * Método que devuelve un juego
	 * 
	 * @param id = clave de identificación del juego
	 * @return devuelve un juego
	 */
	public Juego juego(Integer id) {

		Juego juego = null;
		try {

			// Si el usuario y la contraseña no son nulos que abra conexion mediante el
			// metodo

			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery(
						" select * from juego inner join plataforma on juego.idPlataforma = plataforma.id and juego.id = "
								+ id + "        inner join genero on juego.idGenero = genero.id "
								+ "        inner join fotojuego on juego.id = fotojuego.idJuego;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();
					juego = (new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"), rs.getInt("idUsuario")));
				}

				rs.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return juego;
	}

	// -----------------------------------------------------------------------------------------

	/**
	 * Método que devuelve una guía
	 * 
	 * @param id = clave de identificación de una guía
	 * @return devuelve una guía
	 */
	public Guia guia(Integer id) {

		Guia juego = null;
		try {

			// Si el usuario y la contraseña no son nulos que abra conexion mediante el
			// metodo

			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from guia where id = " + id + ";");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();
					juego = (new Guia(rs.getInt("id"), rs.getString("titulo"), rs.getString("guia"),
							rs.getInt("idUsuario")));
				}

				rs.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return juego;
	}

	// ----------------------------------------------------------------------------------------------------

	/**
	 * Método que devuelve un análisis
	 * 
	 * @param id = clave de identificación de un análisis
	 * @return devuelve un análisis
	 */
	public Analisis analisis(Integer id) {

		Analisis juego = null;
		try {

			// Si el usuario y la contraseña no son nulos que abra conexion mediante el
			// metodo

			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from analisi where id = " + id + ";");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();
					juego = (new Analisis(rs.getInt("id"), rs.getString("titulo"), rs.getString("analisi"),
							rs.getInt("idUsuario")));
				}

				rs.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return juego;
	}

	// -------------------------------------------------------------------------------------------------------

	/**
	 * Método que devuelve una lista de fotos para los juegos
	 * 
	 * @return devuelve una lista de fotos
	 */
	public ArrayList<Foto> listaFotosJuegos() {
		ArrayList<Foto> Fjuego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM fotoJuego");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					Fjuego = new ArrayList<Foto>();

					Fjuego.add(new Foto(rs.getInt("id"), rs.getString("foto"), rs.getInt("idJuego")));

					while (rs.next()) {

						Fjuego.add(new Foto(rs.getInt("id"), rs.getString("foto"), rs.getInt("idJuego")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Fjuego;
	}
	
	//------------------------------------------------------------------------------------------------
	
	public ArrayList<Foto> listaFotosGuia() {
		ArrayList<Foto> Fjuego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM fotoGuia");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
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
			e.printStackTrace();
		}
		return Fjuego;
	}
	
	//-------------------------------------------------------------------------------------------------------
	
	public ArrayList<Foto> listaFotosAnalisi() {
		ArrayList<Foto> Fjuego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM fotoAnalisi");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
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
			e.printStackTrace();
		}
		return Fjuego;
	}

	// -------------------------------------------------------------------------------------------------------

	/**
	 * Método que inserta un comentario
	 * 
	 * @param idUsuario  = clave de identificación de un usuario
	 * @param idJuego    = clave de identificación de un juego
	 * @param comentario = párametro donde se guarda el comentario
	 * @return devuelve el id generado del comentario
	 */
	public int insertComentario(String comentario, String fecha, Integer idUsuario, Integer idJuego) {
		int rowID = 0;
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO comentario (comentario, fecha, meGusta, noMeGusta, idUsuario, idJuego) " + "VALUES ('" + comentario
					+ "','" + fecha + "','0', '0', '"+idUsuario+"', '"+idJuego+"');";

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
			e.printStackTrace();
		}
		return rowID;
	}

	//------------------------------------------------------------------------------------------------------
	public int insertComentarioGuia(String comentario, String fecha, Integer idUsuario, Integer idGuia) {
		int rowID = 0;
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO comentario_guia (comentario, fecha, meGusta, noMeGusta, idUsuario, idGuia) " + "VALUES ('" + comentario
					+ "','" + fecha + "','0', '0', '"+idUsuario+"', '"+idGuia+"');";

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
			e.printStackTrace();
		}
		return rowID;
	}
	// --------------------------------------------------------------------------------------------------
	
	public int insertComentarioAnalisis(String comentario, String fecha, Integer idUsuario, Integer idAnalisis) {
		int rowID = 0;
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO comentario_analisis (comentario, fecha, meGusta, noMeGusta, idUsuario, idAnalisis) " + "VALUES ('" + comentario
					+ "','" + fecha + "',0, 0, '"+idUsuario+"', '"+idAnalisis+"');";

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
			e.printStackTrace();
		}
		return rowID;
	}
	
	//------------------------------------------------------------------------------------------------

	/**
	 * Método que de devuelve una lista de comentarios para los juegos
	 * 
	 * @return devuelve una lista de comentarios
	 */
	public ArrayList<Comentario> listaComentarioJuegos() {
		ArrayList<Comentario> Cjuego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM comentario");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					Cjuego = new ArrayList<Comentario>();

					Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idJuego"),
							rs.getString("comentario"), rs.getString("fecha"), rs.getInt("meGusta"),
							rs.getInt("noMeGusta")));

					while (rs.next()) {

						Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idJuego"),
								rs.getString("comentario"), rs.getString("fecha"), rs.getInt("meGusta"),
								rs.getInt("noMeGusta")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Cjuego;
	}
	
	//--------------------------------------------------------------------------------------------------
	
	public ArrayList<Comentario> listaComentarioGuia() {
		ArrayList<Comentario> Cjuego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM comentario_guia");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					Cjuego = new ArrayList<Comentario>();

					Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idGuia"),
							rs.getString("comentario"), rs.getString("fecha"), rs.getInt("meGusta"),
							rs.getInt("noMeGusta")));

					while (rs.next()) {

						Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idGuia"),
								rs.getString("comentario"), rs.getString("fecha"), rs.getInt("meGusta"),
								rs.getInt("noMeGusta")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Cjuego;
	}
	// ---------------------------------------------------------------------------------------------------
	
	
	public ArrayList<Comentario> listaComentarioAnalisi() {
		ArrayList<Comentario> Cjuego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM comentario_analisis");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					Cjuego = new ArrayList<Comentario>();

					Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idAnalisis"),
							rs.getString("comentario"), rs.getString("fecha"), rs.getInt("meGusta"),
							rs.getInt("noMeGusta")));

					while (rs.next()) {

						Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idAnalisis"),
								rs.getString("comentario"), rs.getString("fecha"), rs.getInt("meGusta"),
								rs.getInt("noMeGusta")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Cjuego;
	}
	
	//-----------------------------------------------------------------------------------------------

	public void deleteComentarioJuego(Integer id) {
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();

				String queryBorrar = "DELETE FROM comentario WHERE id=" + id + ";";

				stmt.executeUpdate(queryBorrar);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//------------------------------------------------------------------------------------------
	
	public void deleteComentarioGuia(Integer id) {
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();

				String queryBorrar = "DELETE FROM comentario_guia WHERE id=" + id + ";";

				stmt.executeUpdate(queryBorrar);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//-------------------------------------------------------------------------------------
	
	public void deleteComentarioAnalisis(Integer id) {
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();

				String queryBorrar = "DELETE FROM comentario_analisis WHERE id=" + id + ";";

				stmt.executeUpdate(queryBorrar);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//---------------------------------------------------------------------------------------------
	
	public void insertValoracion(Integer valoracion, Integer idJuego, Integer idUsuario) {
		try {

			// metodo
			Connection connection = new Conexion().conecta();

			if (connection != null) {

				Statement stmt = connection.createStatement();

				String query = "INSERT INTO puntuacion (puntuacion, idJuego, idUsuario) VALUE ('"+valoracion+"','"+idJuego+"','"+idUsuario+"')";
					

				stmt.executeUpdate(query);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//-----------------------------------------------------------------------------------------------
	
	public Puntuacion listaValoracion(Integer idJuego) {
		Puntuacion Cjuego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select avg(puntuacion) as valoracion, id, puntuacion, idJuego, idUsuario from puntuacion where idJuego = "+idJuego+";");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					Cjuego = (new Puntuacion(rs.getInt("id"), rs.getInt("puntuacion"), rs.getInt("idJuego"), rs.getInt("idUsuario"), rs.getDouble("valoracion")));
			
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Cjuego;
	}
	//-----------------------------------------------------------------------------------------
	public ArrayList<Top10> listaTop10() {
		ArrayList<Top10> Cjuego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select DISTINCT avg(puntuacion) as valoracion, juego.id, juego.titulo, genero.nombre as genero, plataforma.nombre as plataforma, juego.anyo, genero.id as idGenero, plataforma.id as idPlataforma from juego inner join puntuacion on  puntuacion.idJuego = juego.id" + 
						"    inner join plataforma on juego.idPlataforma = plataforma.id" + 
						"    inner join genero on juego.idGenero = genero.id" + 
						"    group by puntuacion order by valoracion <10;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					Cjuego = new ArrayList<Top10>();

					Cjuego.add(new Top10(rs.getInt("id"), rs.getString("titulo"), rs.getInt("anyo"),
							rs.getString("genero"), rs.getString("plataforma"), rs.getInt("valoracion"), rs.getInt("idGenero"), rs.getInt("idPlataforma")));

					while (rs.next()) {

						Cjuego.add(new Top10(rs.getInt("id"), rs.getString("titulo"), rs.getInt("anyo"),
								rs.getString("genero"), rs.getString("plataforma"), rs.getInt("valoracion"), rs.getInt("idGenero"), rs.getInt("idPlataforma")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Cjuego;
	}
	//------------------------------------------------------------------------------
	public ArrayList<Top10> listaTop10Plataformas(Integer id) {
		ArrayList<Top10> Cjuego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select DISTINCT avg(puntuacion) as valoracion, juego.id, juego.titulo, genero.nombre as genero, plataforma.nombre as plataforma, juego.anyo, genero.id as idGenero, plataforma.id as idPlataforma from juego inner join puntuacion on  puntuacion.idJuego = juego.id" + 
						"    inner join plataforma on juego.idPlataforma = plataforma.id AND plataforma.id = "+id+ 
						"    inner join genero on juego.idGenero = genero.id" + 
						"    group by puntuacion order by valoracion <10;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					Cjuego = new ArrayList<Top10>();

					Cjuego.add(new Top10(rs.getInt("id"), rs.getString("titulo"), rs.getInt("anyo"),
							rs.getString("genero"), rs.getString("plataforma"), rs.getInt("valoracion"), rs.getInt("idGenero"), rs.getInt("idPlataforma")));

					while (rs.next()) {

						Cjuego.add(new Top10(rs.getInt("id"), rs.getString("titulo"), rs.getInt("anyo"),
								rs.getString("genero"), rs.getString("plataforma"), rs.getInt("valoracion"), rs.getInt("idGenero"), rs.getInt("idPlataforma")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Cjuego;
	}
	
}
