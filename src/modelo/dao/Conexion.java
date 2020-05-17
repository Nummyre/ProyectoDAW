package modelo.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import org.slf4j.LoggerFactory;

import ch.qos.logback.classic.Logger;

public class Conexion {
	
	private static final Logger logger = (Logger) LoggerFactory.getLogger(Conexion.class);	
	
	 public Connection conecta() {
	        try {
	            String url = ("jdbc:mysql://localhost:3306/db_myweb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false");

	            Class.forName("com.mysql.cj.jdbc.Driver");

	            return DriverManager.getConnection(url, "usuario", "java");
	        } catch (Exception e) {
	        	
	           logger.error(e.getMessage());
	           logger.debug(e.getMessage());
	           
	            return null;
	        }
	    }
	
}
