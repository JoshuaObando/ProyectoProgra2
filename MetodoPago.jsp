<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Estilos/EstiloPago.css">
    <title>Pago</title>
   
</head>
<body>
<!--Botones de tipos de pago-->
<div class="button-container">
    <button class="button" onclick="showModal('efectivo')">En Efectivo</button>
    <button class="button" onclick="showModal('pagoRapido')">Pago Rápido</button>
</div>
<!--Boton de salir al darle cerrar lo manda a el panel empleado-->
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
    }

    
</script>
<script>
    function redirectTo(url) {
        window.location.href = url;
    }//redirecciona a otro JSP
</script>
</body>
</html>