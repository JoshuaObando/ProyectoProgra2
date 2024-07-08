package Java;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EliminarUsuario {

    public String eliminarUsuario(Connection con, String cedula) {
        String message = "";
        PreparedStatement ps = null;

        try {
            String consultaEliminar = "DELETE FROM usuarios WHERE cedula=?";
            ps = con.prepareStatement(consultaEliminar);

            ps.setString(1, cedula);

            ps.execute();
            message = "Eliminación exitosa";
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