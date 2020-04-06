package modelo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import modelo.pojo.Genero;
import modelo.pojo.Juego;


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
			}catch (Exception e) {
				e.printStackTrace();
			}
		return null;
		} 
		

	
	
	public ArrayList<Genero> genero() {
		Genero juego;
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
					ResultSet rs = stmt.executeQuery("SELECT * FROM genero");

					rs.last();
					if (rs.getRow() > 0) {

						// Coge los datos del usuario que a iniciado sesion de la base de datos
						rs.first();
						juego = new Genero(rs.getInt("id"), rs.getString("nombre"));
					}

					rs.close();
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
		return null;
		} 
		
	}
	

