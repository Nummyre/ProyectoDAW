package modelo.dao;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.slf4j.LoggerFactory;

import ch.qos.logback.classic.Logger;
import controlador.ValoracionJuego;
import modelo.pojo.Analisis;
import modelo.pojo.Comentario;
import modelo.pojo.Comunidad;
import modelo.pojo.Foto;
import modelo.pojo.Genero;
import modelo.pojo.Guia;
import modelo.pojo.Juego;
import modelo.pojo.PlataformasJuegos;
import modelo.pojo.Plataforma;

import modelo.pojo.Puntuacion;
import modelo.pojo.Top10;
import modelo.pojo.Usuario;
import modelo.pojo.ValoracionLista;

public class JuegosDAO {

	private static final Logger logger = (Logger) LoggerFactory.getLogger(JuegosDAO.class);	
	
	
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
				ResultSet rs = stmt.executeQuery("select * from juego where id >44;");

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
			logger.error(e.getMessage());
		}
		return juego;
	}

	
	//-----------------------------------------------------------------------------------------------
	
	
	//-------------------------------------------------------------------------------------------
	
	
	
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
			logger.error(e.getMessage());
		}
	}

	// ----------------------------------------------------------------------------------------



	// -------------------------------------------------------------------------------------------

	

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
			logger.error(e.getMessage());
		}
		return juego;
	}

	// ----------------------------------------------------------------------------------------


	// --------------------------------------------------------------------------------


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
			logger.error(e.getMessage());
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
			logger.error(e.getMessage());
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

			String query = "INSERT INTO juego (titulo, descripcion, anyo, idGenero, idPlataforma, idUsuario) "
					+ "VALUES ('" + titulo + "','" + desc + "','" + anyo + "','" + idGen + "','" + idPla + "','"
					+ idUser + "');";

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

	// --------------------------------------------------------------------------------------------------------


	// ----------------------------------------------------------------------------------------------------------

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

			String query = "update juego set titulo = '" + titulo + "', Descripcion = '" + desc + "', anyo = " + anyo+ ", idGenero = " + idGen + ", idPlataforma = " + idPla + " where id = " + idJuego;
			Statement stmt = connection.createStatement();
			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}

	}

	// -----------------------------------------------------------------------------------------------------


//------------------------------------------------------------------------------------------------------

	

	// --------------------------------------------------------------------------------------------------------

	// ----------------------------------------------------------------------------------------------------------

	
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
			logger.error(e.getMessage());
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

			String query = "update fotoJuego set foto = '" + foto + "' where idJuego = " + idJuego;
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

	// -----------------------------------------------------------------------------------------------------

	// ----------------------------------------------------------------------------------------------------------

	
	// -------------------------------------------------------------------------------------------------------

	/**
	 * Método que muestra una lista de juegos relacionados con nintendo
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<PlataformasJuegos> nintendoList() {
		ArrayList<PlataformasJuegos> juego = null;
		try {
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select juego.id, fotoJuego.foto, juego.titulo, juego.Descripcion, juego.anyo, genero.nombre as genero, plataforma.nombre as plataforma from juego inner join plataforma on juego.idPlataforma = plataforma.id and plataforma.id = 3 " + 
						"inner join fotoJuego on juego.id = fotoJuego.idJuego " + 
						"inner join genero on juego.idGenero = genero.id;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<PlataformasJuegos>();

					juego.add(new PlataformasJuegos(rs.getInt("id"), rs.getString("foto"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getString("genero"), rs.getString("plataforma")));

					while (rs.next()) {

						juego.add(new PlataformasJuegos(rs.getInt("id"), rs.getString("foto"), rs.getString("titulo"), rs.getString("Descripcion"),
								rs.getInt("anyo"), rs.getString("genero"), rs.getString("plataforma")));
					}
				}

				rs.close();

			}

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return juego;

	}

	// -------------------------------------------------------------------------------------------------------------

	/**
	 * Método que devuelve una lista realacionada con juegos de xbox
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<PlataformasJuegos> xboxList() {
		ArrayList<PlataformasJuegos> juego = null;
		try {
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select juego.id, fotoJuego.foto, juego.titulo, juego.Descripcion, juego.anyo, genero.nombre as genero, plataforma.nombre as plataforma from juego inner join plataforma on juego.idPlataforma = plataforma.id and plataforma.id = 2 " + 
						"inner join fotoJuego on juego.id = fotoJuego.idJuego " + 
						"inner join genero on juego.idGenero = genero.id;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<PlataformasJuegos>();

					juego.add(new PlataformasJuegos(rs.getInt("id"), rs.getString("foto"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getString("genero"), rs.getString("plataforma")));

					while (rs.next()) {
						juego.add(new PlataformasJuegos(rs.getInt("id"), rs.getString("foto"), rs.getString("titulo"), rs.getString("Descripcion"),
								rs.getInt("anyo"), rs.getString("genero"), rs.getString("plataforma")));
					}
				}

				rs.close();

			}

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return juego;

	}

	// --------------------------------------------------------------------------------------------------------------

	/**
	 * Método que devuelve una lista relacionada con los juegos de PlayStation
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<PlataformasJuegos> playSList() {
		ArrayList<PlataformasJuegos> juego = null;
		try {
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select juego.id, fotoJuego.foto, juego.titulo, juego.Descripcion, juego.anyo, genero.nombre as genero, plataforma.nombre as plataforma from juego inner join plataforma on juego.idPlataforma = plataforma.id and plataforma.id = 1 " + 
						"inner join fotoJuego on juego.id = fotoJuego.idJuego " + 
						"inner join genero on juego.idGenero = genero.id;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<PlataformasJuegos>();

					juego.add(new PlataformasJuegos(rs.getInt("id"), rs.getString("foto"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getString("genero"), rs.getString("plataforma")));

					while (rs.next()) {

						juego.add(new PlataformasJuegos(rs.getInt("id"), rs.getString("foto"), rs.getString("titulo"), rs.getString("Descripcion"),
								rs.getInt("anyo"), rs.getString("genero"), rs.getString("plataforma")));
					}
				}

				rs.close();

			}

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return juego;

	}

	// -------------------------------------------------------------------------------------------------

	/**
	 * Método ue devuelve una lista relacionada con los juegos de PC
	 * 
	 * @return devuelve una lista de juegos
	 */
	public ArrayList<PlataformasJuegos> pcList() {
		ArrayList<PlataformasJuegos> juego = null;
		try {
			Connection connection = new Conexion().conecta();

			if (connection != null) {
				Statement stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select juego.id, fotoJuego.foto, juego.titulo, juego.Descripcion, juego.anyo, genero.nombre as genero, plataforma.nombre as plataforma from juego inner join plataforma on juego.idPlataforma = plataforma.id and plataforma.id = 4 " + 
						"inner join fotoJuego on juego.id = fotoJuego.idJuego " + 
						"inner join genero on juego.idGenero = genero.id;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<PlataformasJuegos>();

					juego.add(new PlataformasJuegos(rs.getInt("id"), rs.getString("foto"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getString("genero"), rs.getString("plataforma")));

					while (rs.next()) {
						juego.add(new PlataformasJuegos(rs.getInt("id"), rs.getString("foto"), rs.getString("titulo"), rs.getString("Descripcion"),
								rs.getInt("anyo"), rs.getString("genero"), rs.getString("plataforma")));
					}
				}

				rs.close();

			}

		} catch (Exception e) {
			logger.error(e.getMessage());
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
			logger.error(e.getMessage());
		}

		return juego;
	}

	// -----------------------------------------------------------------------------------------


	// ----------------------------------------------------------------------------------------------------

	
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
			logger.error(e.getMessage());
		}
		return Fjuego;
	}
	
	//------------------------------------------------------------------------------------------------

	
	//-------------------------------------------------------------------------------------------------------
	

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

			String query = "INSERT INTO comentario (comentario, fecha, idUsuario, idJuego) " + "VALUES ('" + comentario
					+ "','" + fecha + "', '"+idUsuario+"', '"+idJuego+"');";

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

	//------------------------------------------------------------------------------------------------------

	// --------------------------------------------------------------------------------------------------
	

	//----------------------------------------------------------------------------------------------------------------
	
	public int insertComentarioComunidad(String comentario, String fecha, Integer idUsuario, Integer idComunidad) {
		int rowID = 0;
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO comentarioComunidad (comentario, fecha, idUsuario, idComunidad) " + "VALUES ('" + comentario
					+ "','" + fecha + "', '"+idUsuario+"', '"+idComunidad+"');";

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
							rs.getString("comentario"), rs.getString("fecha")));

					while (rs.next()) {

						Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idJuego"),
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
	
	//--------------------------------------------------------------------------------------------------

	// ---------------------------------------------------------------------------------------------------
	
	
	
	
	// ---------------------------------------------------------------------------------------------------
	
	
	public ArrayList<Comentario> listaComentarioComunidad() {
		ArrayList<Comentario> Cjuego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM comentarioComunidad");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					Cjuego = new ArrayList<Comentario>();

					Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idComunidad"),
							rs.getString("comentario"), rs.getString("fecha")));

					while (rs.next()) {

						Cjuego.add(new Comentario(rs.getInt("id"), rs.getInt("idUsuario"), rs.getInt("idComunidad"),
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
			logger.error(e.getMessage());
		}
	}
	
	
	//-----------------------------------------------------------------------------------------------

		public void deleteComentarioComunidad(Integer id) {
			try {

				// metodo
				Connection connection = new Conexion().conecta();

				if (connection != null) {

					Statement stmt = connection.createStatement();

					String queryBorrar = "DELETE FROM comentarioComunidad WHERE id=" + id + ";";

					stmt.executeUpdate(queryBorrar);
				}
			} catch (Exception e) {
				logger.error(e.getMessage());
			}
		}
	
	//------------------------------------------------------------------------------------------
	
	
	//-------------------------------------------------------------------------------------
	
	
	
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
			logger.error(e.getMessage());
		}
	}
	
	//-----------------------------------------------------------------------------------------------
	
	public ArrayList<ValoracionLista> listaValoracion() {
		ArrayList<ValoracionLista> Cjuego = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from puntuacion;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();
					Cjuego = new ArrayList<ValoracionLista>();

					Cjuego.add(new ValoracionLista(rs.getInt("id"), rs.getInt("puntuacion"), rs.getInt("idJuego"),
							rs.getInt("idUsuario")));

					while (rs.next()) {

						Cjuego.add(new ValoracionLista(rs.getInt("id"), rs.getInt("puntuacion"), rs.getInt("idJuego"),
								rs.getInt("idUsuario")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return Cjuego;
	}
	
	
	public Puntuacion valoracionJuegoXIdUsuario(Integer idJuego, Integer idUsuario) {

		Puntuacion puntos = null;
		try {

				Connection connection = new Conexion().conecta();
				Statement stmt = null;

				if (connection != null) {

					// Si la conexion no es nula que ejecute la query del select con los datos
					// obtenidos
					stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery("select  * from puntuacion where idUsuario = "+idUsuario+" AND idJuego = "+idJuego+";");

					rs.last();
					if (rs.getRow() > 0) {

						// Coge los datos del usuario que a iniciado sesion de la base de datos
						rs.first();
						puntos = new Puntuacion(rs.getInt("id"), rs.getInt("puntuacion"), rs.getInt("idJuego"),
								rs.getInt("idUsuario"), rs.getDouble("valoracion"));
					}

					rs.close();
				}

		} catch (Exception e) {
			logger.error(e.getMessage());
		}

		return puntos;
	}
	
	public Puntuacion valoracionJuego(Integer idJuego) {

		Puntuacion puntos = null;
		try {

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
						puntos = new Puntuacion(rs.getInt("id"), rs.getInt("puntuacion"), rs.getInt("idJuego"),
								rs.getInt("idUsuario"), rs.getDouble("valoracion"));
					}

					rs.close();
				}

		} catch (Exception e) {
			logger.error(e.getMessage());
		}

		return puntos;
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
						"    group by juego.id ORDER BY valoracion DESC LIMIT 10;");

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
			logger.error(e.getMessage());
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
						"    group by juego.id ORDER BY valoracion DESC LIMIT 10;");

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
			logger.error(e.getMessage());
		}
		return Cjuego;
	}
	
	//-------------------------------------------------------------------------------------
	
	public ArrayList<Comunidad> listaHilos(){
		ArrayList<Comunidad> comunidad = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from comunidad;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					comunidad = new ArrayList<Comunidad>();

					comunidad.add(new Comunidad(rs.getInt("id"), rs.getString("titulo"), rs.getString("hilo"),
							rs.getString("fecha"), rs.getInt("idUsuario"), rs.getString("foto")));

					while (rs.next()) {
						comunidad.add(new Comunidad(rs.getInt("id"), rs.getString("titulo"), rs.getString("hilo"),
								rs.getString("fecha"), rs.getInt("idUsuario"),rs.getString("foto")));
					}
				}

				rs.close();
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return comunidad;
	}
	
	
	
		
	
	//------------------------------------------------------------------------------------
	
	public int insertHilo(String titulo, String hilo, String fecha, Integer idUsuario, String foto) {
		int rowID = 0;
		try {
			Connection connection = new Conexion().conecta();

			String query = "INSERT INTO comunidad (titulo, hilo, fecha, idUsuario, foto) " + "VALUES ('" + titulo
					+ "','" + hilo + "','"+fecha+"', '"+idUsuario+"', '"+foto+"');";

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
	
	//----------------------------------------------------------------------------------------------
	
	
	public Comunidad hilo(Integer id){
	Comunidad hilo = null;
		try {

			// metodo
			Connection connection = new Conexion().conecta();
			Statement stmt = null;

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("select * from comunidad where id="+id+";");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();

					hilo = (new Comunidad(rs.getInt("id"), rs.getString("titulo"), rs.getString("hilo"),
							rs.getString("fecha"), rs.getInt("idUsuario"), rs.getString("foto")));

				}

				rs.close();
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return hilo;
	}
	
}
	

