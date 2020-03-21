package modelo.dao;

import java.sql.Statement;
import java.util.Date;

import modelo.pojo.Usuario;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class UsuariosDAO {

	public void insertUsuario(String nombre, String user, String password, String foto, String email, Date fechaAlta) {

		try {
			Connection connection;
			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

			connection = DriverManager.getConnection(url, "usuario", "java");

			String query = "INSERT INTO usuario (nombre, user, password, foto, email, fechaAlta) " + "VALUES ('" + nombre + "','"
					+ user + "','" + password + "','" + foto + "','" + email + "','" + fechaAlta + "');";
			Statement stmt = connection.createStatement();

			stmt.executeUpdate(query);

			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Usuario existeUsuario(String user, String pass) {
		
		Usuario usuario = null;
		try {
		

			//Si el usuario y la contraseña no son nulos que abra conexion mediante el metodo
			if ((user != null) && (pass != null)) {
				Connection connection = null;
				Statement stmt = null;
				
				Class.forName("com.mysql.cj.jdbc.Driver");

				String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");
					connection = DriverManager.getConnection(url, "usuario", "java");

					if (connection != null) {
						
						//Si la conexion no es nula que ejecute la query del select con los datos obtenidos
						stmt = connection.createStatement();
						ResultSet rs = stmt.executeQuery(
								"SELECT * FROM usuario WHERE user='" + user + "' AND password='" + pass + "'");

						
						rs.last();
						if (rs.getRow() > 0) {
							
							//Coge los datos del usuario que a iniciado sesion de la base de datos
							rs.first();
							usuario = new Usuario(rs.getInt("id"), rs.getString("nombre"), rs.getString("user"),	rs.getString("password"), rs.getString("foto"), rs.getString("email"), rs.getString("fechaAlta"));
						}

						rs.close();	
					}
			}
	
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return usuario;
	}
}