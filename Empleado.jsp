<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="Estilos/Estilo.css">
    <title>Panel de Empleado</title>
</head>
<body>
    <button class="corner-button top-left">San Roque</button>
    <button class="corner-button top-right">Aeropuerto</button>
    <button class="corner-button bottom-left">Universidad de Costa Rica</button>
    <button class="corner-button bottom-right">El pulmón</button>
    
     <!--Boton-->
    <div class="boton-modal">
        <label for="btn-modal">
            Finalizar el día
        </label>
    </div>
<!--Fin de Boton-->
<!--Ventana Modal-->
    <input type="checkbox" id="btn-modal">
    <div class="container-modal">
        <div class="content-modal">
            <h2>¡Bienvenido!</h2>
            <p>El chofer a generado: <br>
                Total en efectivo: <br>
                Total pago fácil: <br>
            </p>
            
            <div id="btn-cerrar"class="btn-cerrar">
                <label for="btn-modal">Cerrar sección</label>
            </div>
        
        </div>
        <label for="btn-modal" class="cerrar-modal"></label>
    </div>
<!--Fin de Ventana Modal-->
<script>
    document.getElementById('btn-cerrar').addEventListener('click', function() {
        // Redirigir a otra página HTML local
        window.location.href = 'index.jsp'; // Reemplaza con la ruta de tu archivo HTML
    });
</script>
   
   
    
</body>
</html>