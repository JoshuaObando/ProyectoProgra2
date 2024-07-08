package Java;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EditarUsuario {

    public String editarUsuario(Connection con, String cedula, String nombre1, String nombre2, String apellido1, String apellido2, String usuario, String clave) {
        String message = "";
        PreparedStatement ps = null;

        try {
            String consultaActualizar = "UPDATE usuarios SET nombre1=?, nombre2=?, apellido1=?, apellido2=?, login=?, clave=? WHERE cedula=?";
            ps = con.prepareStatement(consultaActualizar);

            ps.setString(1, nombre1);
            ps.setString(2, nombre2);
            ps.setString(3, apellido1);
            ps.setString(4, apellido2);
            ps.setString(5, usuario);
            ps.setString(6, clave);
            ps.setString(7, cedula);

            ps.executeUpdate();
            message = "Actualización exitosa";
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