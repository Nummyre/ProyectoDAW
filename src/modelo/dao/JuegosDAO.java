package modelo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import modelo.pojo.Genero;
import modelo.pojo.Juego;
import modelo.pojo.Plataforma;

public class JuegosDAO {

	public ArrayList<Juego> listaJuegos() {
		Juego juego = null;
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
					juego = new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("Descripcion"),
							rs.getInt("anyo"), rs.getString("idGenero"), rs.getString("idPlataforma"),
							rs.getInt("idUsuario"));
				}

				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
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

	public void insertJuego(String titulo, String desc, Integer anyo, Integer idGen, Integer idPla, Integer idUser) {

		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "INSERT INTO juego (titulo, descripcion, anyo, idGenero, idPlataforma, idUsuario) "
					+ "VALUES ('" + titulo + "','" + desc + "','" + anyo + "','" + idGen + "','" + idPla + "','"
					+ idUser + "');";
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void insertJuegoFoto(String foto, Integer idJuego, Integer idGuia, Integer idAnali) {

		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "INSERT INTO foto (foto, idJuego, idGuia, idAnalisis) " + "VALUES ('" + foto + "','"
					+ idJuego + "','" + idGuia + "','" + idAnali + "');";
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
							rs.getInt("anyo"), rs.getString("idGenero"), rs.getString("idPlataforma"),
							rs.getInt("idUsuario")));

					while (rs.next()) {

						juego.add(new Juego(rs.getInt("id"), rs.getString("titulo"), rs.getString("descripcion"),
								rs.getInt("anyo"), rs.getString("idGenero"), rs.getString("idPlataforma"),
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
}
