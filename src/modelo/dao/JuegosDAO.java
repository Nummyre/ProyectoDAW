package modelo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import modelo.pojo.Analisis;
import modelo.pojo.Genero;
import modelo.pojo.Guia;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;
import modelo.pojo.Usuario;

public class JuegosDAO {

	public ArrayList<Juego> listaJuegos() {
		ArrayList<Juego> juego = null;
		try {

			// metodo
			Connection connection = null;
			Statement stmt = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
			connection = DriverManager.getConnection(url, "usuario", "java");

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM juego");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();
					
					juego = new ArrayList<Juego>();
					
					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
							rs.getInt("idUsuario")));
					
					
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
	
	
	public void deleteJuego(Integer id) {
		try {

			// metodo
			Connection connection = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
			connection = DriverManager.getConnection(url, "usuario", "java");

			if (connection != null) {

				Statement stmt = connection.createStatement();	
				
				String queryBorrar ="DELETE FROM juego WHERE id="+id+";";
				
				stmt.executeUpdate(queryBorrar);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void deleteGuia(Integer id) {
		try {

			// metodo
			Connection connection = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
			connection = DriverManager.getConnection(url, "usuario", "java");

			if (connection != null) {

				Statement stmt = connection.createStatement();	
				
				String queryBorrar =" delete from guia where id = "+id;
				
				stmt.executeUpdate(queryBorrar);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void deleteAnalisis(Integer id) {
		try {

			// metodo
			Connection connection = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
			connection = DriverManager.getConnection(url, "usuario", "java");

			if (connection != null) {

				Statement stmt = connection.createStatement();	
				
				String queryBorrar =" delete from analisi where id = "+id;
				
				stmt.executeUpdate(queryBorrar);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Juego> listaJuegosPorIdUser(Integer id) {
		ArrayList<Juego> juego = null;
		try {

			// metodo
			Connection connection = null;
			Statement stmt = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
			connection = DriverManager.getConnection(url, "usuario", "java");

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM juego where idUsuario = "+ id);

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos
					rs.first();
					
					juego = new ArrayList<Juego>();
					
					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
							rs.getInt("idUsuario")));
					
					
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
	
	
	
	
	
	public ArrayList<Guia> listaGuiasPorIdUser(Integer id) {
		ArrayList<Guia> guia = null;
		try {

			// metodo
			Connection connection = null;
			Statement stmt = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
			connection = DriverManager.getConnection(url, "usuario", "java");

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM guia where idUsuario = "+ id);

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
	
	
	public ArrayList<Analisis> listaAnalisisPorIdUser(Integer id) {
		ArrayList<Analisis> guia = null;
		try {

			// metodo
			Connection connection = null;
			Statement stmt = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
			connection = DriverManager.getConnection(url, "usuario", "java");

			if (connection != null) {

				// Si la conexion no es nula que ejecute la query del select con los datos
				// obtenidos
				stmt = connection.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM Analisi where idUsuario = "+ id);

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
	

	public ArrayList<Genero> genero() {
		ArrayList<Genero> juego = null;
		try {

			// metodo
			Connection connection = null;
			Statement stmt = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
			connection = DriverManager.getConnection(url, "usuario", "java");

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

	public ArrayList<Plataforma> plataforma() {

		ArrayList<Plataforma> juego = null;

		try {

			Connection conn = null;
			Statement stmt = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
			conn = DriverManager.getConnection(url, "usuario", "java");

			if (conn != null) {
				stmt = conn.createStatement();
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

	public int insertJuego(String titulo, String desc, Integer anyo, Integer idGen, Integer idPla, Integer idUser) {
		int rowID = 0;
		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "INSERT INTO juego (titulo, descripcion, anyo, idGenero, idPlataforma, idUsuario) "
					+ "VALUES ('" + titulo + "','" + desc + "','" + anyo + "','" + idGen + "','" + idPla + "','"
					+ idUser + "');";
			
			try (Statement stmt = connection.createStatement()){
				
				stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
				ResultSet rs = stmt.getGeneratedKeys();
			
				
				if(rs.next()) {
					rowID = rs.getInt(1);
				
					
				}
			}catch (Exception e) {
				
			}
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowID;
	}
	
	public int insertGuia(String titulo, String texto, Integer idUsuario) {
		int rowID = 0;
		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "INSERT INTO guia (titulo, guia, idUsuario) "
					+ "VALUES ('" + titulo + "','" + texto + "', "+idUsuario+");";
			
			try (Statement stmt = connection.createStatement()){
				
				stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
				ResultSet rs = stmt.getGeneratedKeys();
			
				
				if(rs.next()) {
					rowID = rs.getInt(1);
				
					
				}
			}catch (Exception e) {
				
			}
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowID;
	}
	
	public int insertAnalisi(String titulo, String texto, Integer idUsuario) {
		int rowID = 0;
		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "INSERT INTO analisi (titulo, analisi, idUsuario) "
					+ "VALUES ('" + titulo + "','" + texto + "', "+idUsuario+");";
			
			try (Statement stmt = connection.createStatement()){
				
				stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
				ResultSet rs = stmt.getGeneratedKeys();
			
				
				if(rs.next()) {
					rowID = rs.getInt(1);
				
					
				}
			}catch (Exception e) {
				
			}
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowID;
	}
	
	
	public void updateJuego(String titulo, String desc, Integer anyo, Integer idGen, Integer idPla, Integer idJuego) {
	
		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "update juego set titulo = '"+titulo+"', Descripcion = '"+desc+"', anyo = "+anyo+", idGenero = "+idGen+", idPlataforma = "+idPla+" where id = "+idJuego;
			Statement stmt = connection.createStatement();
			stmt.executeUpdate(query);
		
		
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
	public void updateGuia(String titulo, String texto, Integer id) {
		
		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "update guia set titulo = '"+titulo+"', guia = '"+texto+"' where id = "+id;
			Statement stmt = connection.createStatement();
			stmt.executeUpdate(query);
		
		
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
public void updateAnalisi(String titulo, String texto, Integer id) {
		
		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "update analisi set titulo = '"+titulo+"', guia = '"+texto+"' where id = "+id;
			Statement stmt = connection.createStatement();
			stmt.executeUpdate(query);
		
		
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public void insertGuiaFoto(String foto, Integer idGuia) {
		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "INSERT INTO fotoGuia (foto, idGuia) " + "VALUES ('" + foto + "',"
					+ idGuia + ");";
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertAnalisiFoto(String foto, Integer idAnalisis) {
		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "INSERT INTO fotoAnalisi (foto, idAnalisis) " + "VALUES ('" + foto + "',"
					+ idAnalisis + ");";
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void insertJuegoFoto(String foto, Integer idJuego) {

		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "INSERT INTO fotoJuego (foto, idJuego) " + "VALUES ('" + foto + "',"
					+ idJuego + ");";
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	public void updateJuegoFoto(String foto, Integer idJuego) {

		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "update fotoJuego set foto = "+foto+" where idJuego = " +idJuego;
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void updateGuiaFoto(String foto, Integer idGuia) {

		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "update fotoGuia set foto = "+foto+" where idJuego = " +idGuia;
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateAnalisisFoto(String foto, Integer idAnalisis) {

		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "update fotoAnalisi set foto = "+foto+" where idJuego = " +idAnalisis;
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Juego> nintendoList() {
		ArrayList<Juego> juego = null;
		try {
			Connection conn;
			Statement stmt = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			conn = DriverManager.getConnection(url, "usuario", "java");

			if (conn != null) {
				stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from juego where idPlataforma = 3;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<Juego>();

					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
							rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
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
	
	public ArrayList<Juego> xboxList() {
		ArrayList<Juego> juego = null;
		try {
			Connection conn;
			Statement stmt = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			conn = DriverManager.getConnection(url, "usuario", "java");

			if (conn != null) {
				stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from juego where idPlataforma = 2;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<Juego>();

					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
							rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
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
	
	public ArrayList<Juego> playSList() {
		ArrayList<Juego> juego = null;
		try {
			Connection conn;
			Statement stmt = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			conn = DriverManager.getConnection(url, "usuario", "java");

			if (conn != null) {
				stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from juego where idPlataforma = 1;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<Juego>();

					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
							rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
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
	
	public ArrayList<Juego> pcList() {
		ArrayList<Juego> juego = null;
		try {
			Connection conn;
			Statement stmt = null;

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			conn = DriverManager.getConnection(url, "usuario", "java");

			if (conn != null) {
				stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("select * from juego where idPlataforma = 4;");

				rs.last();
				if (rs.getRow() > 0) {

					// Coge los datos del usuario que a iniciado sesion de la base de datos

					rs.first();
					juego = new ArrayList<Juego>();

					juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
							rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
							rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
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
	
	public Juego juego(Integer id) {

		Juego juego = null;
		try {

			// Si el usuario y la contraseña no son nulos que abra conexion mediante el
			// metodo
			
				Connection connection = null;
				Statement stmt = null;

				Class.forName("com.mysql.cj.jdbc.Driver");

				String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
				connection = DriverManager.getConnection(url, "usuario", "java");

				if (connection != null) {

					// Si la conexion no es nula que ejecute la query del select con los datos
					// obtenidos
					stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(
							"SELECT * FROM juego INNER JOIN genero ON juego.idGenero = genero.id AND juego.id = "+id+" INNER JOIN plataforma ON juego.idPlataforma = plataforma.id;");

					rs.last();
					if (rs.getRow() > 0) {

						// Coge los datos del usuario que a iniciado sesion de la base de datos
						rs.first();
						juego = (new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
								rs.getInt("anyo"), rs.getInt("idGenero"), rs.getInt("idPlataforma"),
								rs.getInt("idUsuario")));
					}

					rs.close();
				}
			

		} catch (Exception e) {
			e.printStackTrace();
		}

		return juego;
	}

	
	public Guia guia(Integer id) {

		Guia juego = null;
		try {

			// Si el usuario y la contraseña no son nulos que abra conexion mediante el
			// metodo
			
				Connection connection = null;
				Statement stmt = null;

				Class.forName("com.mysql.cj.jdbc.Driver");

				String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
				connection = DriverManager.getConnection(url, "usuario", "java");

				if (connection != null) {

					// Si la conexion no es nula que ejecute la query del select con los datos
					// obtenidos
					stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(
							"select * from guia where id = "+id+";");

					rs.last();
					if (rs.getRow() > 0) {

						// Coge los datos del usuario que a iniciado sesion de la base de datos
						rs.first();
						juego = (new Guia(rs.getInt("id"), rs.getString("titulo"), rs.getString("guia"), rs.getInt("idUsuario")));
					}

					rs.close();
				}
			

		} catch (Exception e) {
			e.printStackTrace();
		}

		return juego;
	}

	
	public Analisis analisis(Integer id) {

		Analisis juego = null;
		try {

			// Si el usuario y la contraseña no son nulos que abra conexion mediante el
			// metodo
			
				Connection connection = null;
				Statement stmt = null;

				Class.forName("com.mysql.cj.jdbc.Driver");

				String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
				connection = DriverManager.getConnection(url, "usuario", "java");

				if (connection != null) {

					// Si la conexion no es nula que ejecute la query del select con los datos
					// obtenidos
					stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(
							"select * from analisi where id = "+id+";");

					rs.last();
					if (rs.getRow() > 0) {

						// Coge los datos del usuario que a iniciado sesion de la base de datos
						rs.first();
						juego = (new Analisis(rs.getInt("id"), rs.getString("titulo"), rs.getString("analisi"), rs.getInt("idUsuario")));
					}

					rs.close();
				}
			

		} catch (Exception e) {
			e.printStackTrace();
		}

		return juego;
	}
	
	
}
