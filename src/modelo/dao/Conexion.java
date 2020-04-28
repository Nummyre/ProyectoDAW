package modelo.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

	 public Connection conecta() {
	        try {
	            String url = ("jdbc:mysql://localhost:3306/db_myweb?serverTimezone=UTC");

	            Class.forName("com.mysql.cj.jdbc.Driver");

	            return DriverManager.getConnection(url, "usuario", "java");
	        } catch (Exception e) {
	            e.printStackTrace();
	            return null;
	        }
	    }
	
}
