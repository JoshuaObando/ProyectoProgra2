<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.SQLException" %>
<jsp:include page="Conexion.jsp" />
<%
    String usuario = (String) session.getAttribute("usuario");
    String tipoPago = request.getParameter("tipo");
    int montoEfectivo = 0;
    int montoTarjeta = 0;

    if ("efectivo".equals(tipoPago)) {
        montoEfectivo = 500;
    } else if ("pagoRapido".equals(tipoPago)) {
        montoTarjeta = 500;
    }

    // Obtener los acumuladores de la sesión
    Integer acumuladoEfectivo = (Integer) session.getAttribute("acumuladoEfectivo");
    Integer acumuladoTarjeta = (Integer) session.getAttribute("acumuladoTarjeta");

    if (acumuladoEfectivo == null) {
        acumuladoEfectivo = 0;
    }
    if (acumuladoTarjeta == null) {
        acumuladoTarjeta = 0;
    }

    // Actualizar los acumuladores
    acumuladoEfectivo += montoEfectivo;
    acumuladoTarjeta += montoTarjeta;

    // Guardar los acumuladores en la sesión
    session.setAttribute("acumuladoEfectivo", acumuladoEfectivo);
    session.setAttribute("acumuladoTarjeta", acumuladoTarjeta);

    Connection conexion = (Connection) application.getAttribute("DBConnection");
    PreparedStatement ps = null;

    try {
        if (conexion != null) {
            String consulta = "INSERT INTO totales (UsuarioChofer, monto_efectivo, monto_tarjeta) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE monto_efectivo = monto_efectivo + VALUES(monto_efectivo), monto_tarjeta = monto_tarjeta + VALUES(monto_tarjeta)";
            ps = conexion.prepareStatement(consulta);
            ps.setString(1, usuario);
            ps.setInt(2, montoEfectivo);
            ps.setInt(3, montoTarjeta);
            ps.executeUpdate();
        }
    } catch (SQLException e) {
        out.println("<p style='color:red'>Error: " + e.toString() + "</p>");
    } finally {
        if (ps != null) ps.close();
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="EstiloPago.css">
    <title>Pago</title>
</head>
<body>
    <div class="button-container">
        <button class="button" onclick="showModal('efectivo')">En Efectivo</button>
        <button class="button" onclick="showModal('pagoRapido')">Pago Rápido</button>
    </div>

    <div id="modal" class="modal">
        <div class="modal-content">
            <p id="modal-message"></p>
            <button class="close-button" onclick="redirectTo('Empleado.jsp')">Cerrar</button>
        </div>
    </div>

    <script>
        function showModal(tipo) {
            var mensaje = '';
            if (tipo === 'efectivo') {
                mensaje = 'Debe pagar al chofer 500 colones.';
            } else if (tipo === 'pagoRapido') {
                mensaje = 'Se ha pagado 500 colones.';
            }
            document.getElementById('modal-message').innerText = mensaje;
            document.getElementById('modal').style.display = 'flex';

            setTimeout(function() {
                redirectTo('Empleado.jsp');
            }, 2000);
        }
    </script>
    <script>
        function redirectTo(url) {
            window.location.href = url;
        }
    </script>
</body>
</html>