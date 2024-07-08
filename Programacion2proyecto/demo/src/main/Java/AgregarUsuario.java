package Java;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AgregarUsuario {

    public String agregarUsuario(Connection con, String cedula, String nombre1, String nombre2, String apellido1, String apellido2, String usuario, String clave) {
        String message = "";
        PreparedStatement ps = null;

        try {
            String consultaingresar = "INSERT INTO usuarios (cedula, nombre1, nombre2, apellido1, apellido2, login, clave) VALUES (?, ?, ?, ?, ?, ?, ?)";
            ps = con.prepareStatement(consultaingresar);

            ps.setString(1, cedula);
            ps.setString(2, nombre1);
            ps.setString(3, nombre2);
            ps.setString(4, apellido1);
            ps.setString(5, apellido2);
            ps.setString(6, usuario);
            ps.setString(7, clave);

            ps.executeUpdate();
            message = "Registro exitoso";
        } catch (SQLException e) {
            message = "Error: " + e.getMessage();
        } finally {
            try {
                if (ps != null) ps.close();
            } catch (SQLException e) {
                message = "Error al cerrar la conexión: " + e.getMessage();
            }
        }
        return message;
    }
}