<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.ResultSet, java.sql.SQLException, java.sql.PreparedStatement" %>
<jsp:include page="Conexion.jsp" />

<head>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
<%
    ResultSet rs = null;
    PreparedStatement ps = null;
    Connection con = (Connection) application.getAttribute("DBConnection"); // Obtener la instancia de la base de datos
    boolean error = false; // Bandera de error
    String mensajeError = "";

    try {
        if (con != null) {
            String usuario = request.getParameter("usuario");
            String contrasena = request.getParameter("contrasena");

            String ConsultaAdmin = "SELECT * FROM registrousuarios WHERE idUsuarios = ? AND contraseñas = ?";
            ps = con.prepareStatement(ConsultaAdmin);
            ps.setString(1, usuario);
            ps.setString(2, contrasena);

            rs = ps.executeQuery();

            if (rs.next()) {
                if ("AdminJefe".equals(usuario) && "admin123".equals(contrasena)) {
                    session.setAttribute("usuario", usuario); // Guardar el usuario en la sesión
                    response.sendRedirect("PanelAdmin.jsp");
                } else {
                    error = true;
                    mensajeError = "Usuario o contraseña incorrectos para Admin";
                }
            } else {
                rs.close();
                ps.close();

                String ConsultaEmpleado = "SELECT * FROM usuarios WHERE login = ? AND clave = ?";
                ps = con.prepareStatement(ConsultaEmpleado);
                ps.setString(1, usuario);
                ps.setString(2, contrasena);

                rs = ps.executeQuery();

                if (rs.next()) {
                    session.setAttribute("usuario", usuario); // Guardar el usuario en la sesión
                    response.sendRedirect("Empleado.jsp");
                } else {
                    error = true;
                    mensajeError = "Usuario o contraseña incorrectos para Empleado";
                }
            }
        } else {
            out.println("<p style='color:red'>No se pudo establecer la conexión con la base de datos</p>");
        }
    } catch (SQLException e) {
        out.println("<p style='color:red'>Error: " + e.toString() + "</p>");
    } finally { // Cierre de la base de datos
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
        } catch (SQLException e) { // Manejo de excepciones
            out.println("<p style='color:red'>Error al cerrar la conexión: " + e.getMessage() + "</p>");
        }
    }
%>

<% if (error) { %>
    <script>
        Swal.fire({
            title: 'Error',
            text: '<%= mensajeError %>',
            icon: 'error',
            confirmButtonText: 'OK'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = 'index.jsp'; // Redirige de nuevo al formulario de inicio de sesión
            }
        });
    </script>
<% } %>

</body>