package Java;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conexion {
    static Connection conectar;//Variable de tipo Connection
    
    String Usuario = "UsuarioColaborador";//Usuario de la base de datos
    String Contraseña = "Joshua20000..**";//Contraseña de la base de datos
    String BD = "SistemaPagoAutobus";//Nombre de la base de datos
    String IP = "10.153.156.206";//IP de la base de datos
    String Puerto = "3306"; //Puerto de la base de datos

    String cadena = "jdbc:mysql://" + IP + ":" + Puerto + "/" + BD;

    //Metodo para establecer la conexion
    public Connection EstablecerConexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");//Cargar el driver de mysql
            conectar = DriverManager.getConnection(cadena, Usuario, Contraseña);//Conectar con la base de datos
            // JOptionPane.showMessageDialog(null, "Se conecto correctamente a la base de datos");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error de SQL al conectar con la base de datos: " + e.toString());
        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "No se encontró el driver de conexión: " + e.toString());
        }
        return conectar;
    }//Fin de EstablecerConexion
}//Fin de la clase

