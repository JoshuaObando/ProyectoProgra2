<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.SQLException" %>
<jsp:include page="Conexion.jsp" />

<%
    Connection con = (Connection) application.getAttribute("DBConnection");
    PreparedStatement ps = null;
    String message = "";

    try {
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "add": // Si es la acción de agregar
                    if (request.getMethod().equalsIgnoreCase("POST")) { // Si es una petición POST
                        // Obtener los datos del formulario
                        String Cedula = request.getParameter("Cedula");
                        String Nombre1 = request.getParameter("nombre1");
                        String Nombre2 = request.getParameter("nombre2");
                        String Apellido1 = request.getParameter("Apellido1");
                        String Apellido2 = request.getParameter("Apellido2");
                        String Usuario = request.getParameter("Usuario");
                        String Contrasena = request.getParameter("Contraseña");

                        // Preparar y ejecutar la inserción
                        String sqlInsert = "INSERT INTO usuarios (cedula, nombre1, nombre2, apellido1, apellido2, login, clave) VALUES (?, ?, ?, ?, ?, ?, ?)";
                        ps = con.prepareStatement(sqlInsert);
                        ps.setString(1, Cedula);
                        ps.setString(2, Nombre1);
                        ps.setString(3, Nombre2);
                        ps.setString(4, Apellido1);
                        ps.setString(5, Apellido2);
                        ps.setString(6, Usuario);
                        ps.setString(7, Contrasena);
                        ps.executeUpdate();
                        message = "Empleado agregado exitosamente";
                    }
                    break;
                case "update": // Si es la acción de actualizar
                    if (request.getMethod().equalsIgnoreCase("POST")) { // Si es una petición POST
                        // Obtener los datos del formulario
                        String Cedula = request.getParameter("Cedula");
                        String Nombre1 = request.getParameter("nombre1");
                        String Nombre2 = request.getParameter("nombre2");
                        String Apellido1 = request.getParameter("Apellido1");
                        String Apellido2 = request.getParameter("Apellido2");
                        String Usuario = request.getParameter("Usuario");
                        String Contrasena = request.getParameter("Contraseña");

                        // Preparar y ejecutar la actualización
                        String sqlUpdate = "UPDATE usuarios SET nombre1 = ?, nombre2 = ?, apellido1 = ?, apellido2 = ?, login = ?, clave = ? WHERE cedula = ?";
                        ps = con.prepareStatement(sqlUpdate);
                        ps.setString(1, Nombre1);
                        ps.setString(2, Nombre2);
                        ps.setString(3, Apellido1);
                        ps.setString(4, Apellido2);
                        ps.setString(5, Usuario);
                        ps.setString(6, Contrasena);
                        ps.setString(7, Cedula);
                        ps.executeUpdate();
                        message = "Empleado actualizado exitosamente";
                    }
                    break;
                case "delete": // Si es la acción de eliminar
                    String Cedula = request.getParameter("Cedula");

                    // Preparar y ejecutar la eliminación
                    String sqlDelete = "DELETE FROM usuarios WHERE cedula = ?";
                    ps = con.prepareStatement(sqlDelete);
                    ps.setString(1, Cedula);
                    ps.executeUpdate();
                    message = "Empleado eliminado exitosamente";
                    break;
                default: // Si la acción no es ninguna de las anteriores
                    message = "Acción no reconocida";
            }
        }
    } catch (SQLException e) {
        message = "Error: " + e.getMessage();
    } finally {
        try {
            if (ps != null) ps.close();
        } catch (SQLException e) {
            message = "Error al cerrar la conexión: " + e.getMessage();
        }
    }

    // Redireccionar a la página de administración con el mensaje de confirmación
    response.sendRedirect("PanelAdmin.jsp?message=" + java.net.URLEncoder.encode(message, "UTF-8"));
%>