<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pago</title>
    <style>
        body {
            background:url('../Imagenes/Fondo.jpg') no-repeat center center;
            background-size: cover; 
            font-family: 'Arial', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0; 
        }
        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 20px;
        }
        .button {
            display: inline-block;
            padding: 20px 40px;
            font-size: 24px;
            color: white;
            width: 250px;
            background-color: rgba(0, 0, 0, .2);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, .4);
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }
        .button:hover {
            background-color: #2980b9;
        }
        .button:active {
            transform: scale(0.95);
        }
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }
        .modal-content {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            text-align: center;
        }
        .close-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #e74c3c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .close-button:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>

<div class="button-container">
    <button class="button" onclick="showModal('efectivo')">En Efectivo</button>
    <button class="button" onclick="showModal('pagoRapido')">Pago Rápido</button>
</div>

<div id="modal" class="modal">
    <div class="modal-content">
        <p id="modal-message"></p>
        <button class="close-button" onclick="closeModal()">Cerrar</button>
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

    function closeModal() {
        document.getElementById('modal').style.display = 'none';
    }
</script>

</body>
</html>