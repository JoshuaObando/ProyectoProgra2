import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;

public class Conexion{
    static Connection con;

    String Usuario = "UsuarioColaborador";//Usuario de la base de datos
    String Contraseña = "Joshua20000..**";//Contraseña de la base de datos
    String BD = "SistemaPagoAutobus";//Nombre de la base de datos
    String IP = "10.153.156.206";//IP de la base de datos
    String Puerto = "3306"; //Puerto de la base de datos

    String cadena = "jdbc:mysql://" + IP + ":" + Puerto + "/" + BD;

    //Metodo para establecer la conexion
    public Connection EstablecerConexion() throws SQLException{
        try{
            Class.forName("com.mysql.jdbc.Driver");//Cargar el driver de mysql
            con = DriverManager.getConnection(cadena, Usuario, Contraseña);//Conectar con la base de datos
            
            
        } catch (ClassNotFoundException e) {
            e.getStackTrace();
        }
        return con;
    }//Fin de EstablecerConexion
}