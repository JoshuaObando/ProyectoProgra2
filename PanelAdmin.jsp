<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Estilos/EstiloAdmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Document</title>
</head>
<body>
    <div class="navigation">
        <ul>
            <li>
                    <span class="icon">
                        <i class="fa-solid fa-screwdriver-wrench"></i>
                    </span>
                    <span class="title">Panel Administrador</span>
            </li>

            <li>
                <a href="#administracion" onclick="loadContent('CRUD.jsp')">
                    <span class="icon">
                        <i class="fa-solid fa-user-tie"></i>
                    </span>
                    <span class="title">Administración</span>
                </a>
            </li>

            <li>
                <a href="#lista-empleados" onclick="loadContent('Empleados.jsp')">
                    <span class="icon">
                        <i class="fa-solid fa-users"></i>
                    </span>
                    <span class="title">Lista de empleados</span>
                </a>
            </li>

            <li>
                <a href="#creditos" onclick="loadContent('Creditos.jsp')">
                    <span class="icon">
                        <i class="fa-solid fa-circle-info"></i>
                    </span>
                    <span class="title">Créditos</span>
                </a>
            </li>

            <li class="Seccion">
                <a href="index.jsp">
                    <span class="icon">
                        <i class="fa-solid fa-right-to-bracket"></i>
                    </span>
                    <span class="title">Cerrar sección</span>
                </a>
            </li>
        </ul>
    </div>
    <div class="main">
 
        </div>

        
    </div>
    <script>
        function loadContent(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('main-content').innerHTML = data;
                })
                .catch(error => console.error('Error loading content:', error));
        }
    </script>

    <!-- Incluir dicha librería -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>