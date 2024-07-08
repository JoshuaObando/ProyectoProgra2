<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException" %>
<jsp:include page="Conexion.jsp" />

<%
    Connection con = (Connection) application.getAttribute("DBConnection");
    PreparedStatement ps = null;
    ResultSet rs = null;
    String cedula = request.getParameter("cedula");

    String nombre1 = "";
    String nombre2 = "";
    String apellido1 = "";
    String apellido2 = "";
    String usuario = "";
    String contrasena = "";

    if (cedula != null && !cedula.isEmpty()) {
        try {
            String query = "SELECT * FROM usuarios WHERE cedula = ?";
            ps = con.prepareStatement(query);
            ps.setString(1, cedula);
            rs = ps.executeQuery();

            if (rs.next()) {
                nombre1 = rs.getString("nombre1");
                nombre2 = rs.getString("nombre2");
                apellido1 = rs.getString("apellido1");
                apellido2 = rs.getString("apellido2");
                usuario = rs.getString("login");
                contrasena = rs.getString("clave");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="EstiloAdmin.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <title>Editar Empleado</title>
</head>
<body>
    <div class="container">
        <h3 class="my-3">Editar empleado</h3>
        <form action="AdminJefeAccion.jsp" name="edita" class="row g-3" method="post" autocomplete="off">
            <input type="hidden" name="action" value="update">
            <div class="col-md-4">
                <label for="Cedula" class="form-label">Cédula</label>
                <input type="text" class="form-control" id="Cedula" name="Cedula" value="<%= cedula %>" required readonly>
            </div>
            <div class="col-md-8">
                <label for="nombre1" class="form-label">Primer nombre</label>
                <input type="text" class="form-control" id="nombre1" name="nombre1" value="<%= nombre1 %>" required>
            </div>
            <div class="col-md-8">
                <label for="nombre2" class="form-label">Segundo nombre</label>
                <input type="text" class="form-control" id="nombre2" name="nombre2" value="<%= nombre2 %>" required>
            </div>
            <div class="col-md-8">
                <label for="Apellido1" class="form-label">Primer apellido</label>
                <input type="text" class="form-control" id="Apellido1" name="Apellido1" value="<%= apellido1 %>" required>
            </div>
            <div class="col-md-8">
                <label for="Apellido2" class="form-label">Segundo apellido</label>
                <input type="text" class="form-control" id="Apellido2" name="Apellido2" value="<%= apellido2 %>" required>
            </div>
            <div class="col-md-8">
                <label for="Usuario" class="form-label">Usuario</label>
                <input type="text" class="form-control" id="Usuario" name="Usuario" value="<%= usuario %>" required>
            </div>
            <div class="col-md-8">
                <label for="Contraseña" class="form-label">Contraseña</label>
                <input type="password" class="form-control" id="Contraseña" name="Contraseña" value="<%= contrasena %>" required>
            </div>
            <div class="col-12">
                <a href="AdminPanel.jsp" class="btn btn-secondary">Regresar</a>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
        </form>
    </div>
</body>
</html>