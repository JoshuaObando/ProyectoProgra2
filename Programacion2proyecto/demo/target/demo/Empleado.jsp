<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException" %>
<jsp:include page="Conexion.jsp" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="EstiloChofer.css">
    <title>Panel de Empleado</title>
</head>

<%
    String usuario = (String) session.getAttribute("usuario");//Obtener nombre de usuario del usuario que inicio sesión

    // Obtener los acumuladores de la sesión
    Integer acumuladoEfectivo = (Integer) session.getAttribute("acumuladoEfectivo");//Obtener el acumulador de efectivo
    Integer acumuladoTarjeta = (Integer) session.getAttribute("acumuladoTarjeta");//Obtener el acumulador de tarjeta

    if (acumuladoEfectivo == null) {
        acumuladoEfectivo = 0;
    }
    if (acumuladoTarjeta == null) {//
        acumuladoTarjeta = 0;
    }

    // Calcular la suma de los acumuladores
    Integer suma = acumuladoEfectivo + acumuladoTarjeta;
%>

<body>
    <button class="top-left" onclick="redirectTo('MetodoPago.jsp?tipo=efectivo')">San Roque</button>
    <button class="top-right" onclick="redirectTo('MetodoPago.jsp?tipo=pagoRapido')">Aeropuerto</button>
    <button class="bottom-left" onclick="redirectTo('MetodoPago.jsp?tipo=efectivo')">Universidad de Costa Rica</button>
    <button class="bottom-right" onclick="redirectTo('MetodoPago.jsp?tipo=pagoRapido')">El pulmón</button>

    <div class="boton-modal">
        <label for="btn-modal">
            Finalizar el día
        </label>
    </div>

    <input type="checkbox" id="btn-modal">
    <div class="container-modal">
        <div class="content-modal">
            <h2>¡Bienvenido!</h2>
            //Mostar la suma de los acumuladores
                Total en efectivo: <%= acumuladoEfectivo %> colones<br>
                Total pago fácil: <%= acumuladoTarjeta %> colones<br>
                El chofer a acomulado: <%= suma %> colones<br>
            </p>

            <div id="btn-cerrar" class="btn-cerrar">
                <label for="btn-modal">Cerrar sesión</label>
            </div>
        </div>
        <label for="btn-modal" class="cerrar-modal"></label>
    </div>

    <script>
        document.getElementById('btn-cerrar').addEventListener('click', function() {
            window.location.href = 'index.jsp'; 
        });
    </script>
    <script>
        function redirectTo(url) {
            window.location.href = url;
        }
    </script>
</body>
</html>