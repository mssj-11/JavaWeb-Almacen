package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author HP-MSS
 */

public class Conexion {
    
    public Connection getConexion() throws ClassNotFoundException{
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb-almacen", "root", "");
            System.out.println("Conexion Exitosa");
            return conexion;
        } catch (SQLException e) {
            System.out.println("Error: "+e.toString());
            return null;
        }
        
    }
    
    
}// ERROR DE zona horaria
//Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb-almacen?serverTimezone=UTC", "root", "");