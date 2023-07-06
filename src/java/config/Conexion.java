package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HP-MSS
 */

public class Conexion {
    
    public Connection getConexion(){
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb-almacen", "root", "");
            System.out.println("Conexion Exitosa");
            return conexion;
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("Error: "+e.toString());
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, e);
            return null;
        }
        
    }
    
    
}// ERROR DE zona horaria
//Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb-almacen?serverTimezone=UTC", "root", "");