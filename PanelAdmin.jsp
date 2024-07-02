<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" class="h-100">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Empresa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="Estilos/EstiloAdmin.css" rel="stylesheet">
</head>
<body class="d-flex flex-column h-100">
    <div class="navigation">
        <ul>
            <li>
                <a href="#administracion" onclick="loadContent('CRUD.jsp'); return false;">
                    <span class="icon">
                        <i class="fa-solid fa-user-tie"></i>
                    </span>
                    <span class="title">Administración</span>
                </a>
            </li>
            <li>
                <a href="#lista-empleados" onclick="loadContent('Empleados.jsp'); return false;">
                    <span class="icon">
                        <i class="fa-solid fa-users"></i>
                    </span>
                    <span class="title">Lista de empleados</span>
                </a>
            </li>
            <li>
                <a href="#creditos" onclick="loadContent('Creditos.jsp'); return false;">
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
    <div id="main" class="main flex-shrink-0">
        <h1>Welcome</h1>
        <p>Select a page from the menu.</p>
    </div>

    <script>
        function loadContent(page) {
            fetch(page)
                .then(response => response.text())
                .then(data => {
                    document.getElementById('main').innerHTML = data;
                    attachLinkHandlers();
                    attachFormHandlers();
                })
                .catch(error => console.error('Error loading content:', error));
        }

        function attachLinkHandlers() {
            document.querySelectorAll('#main a').forEach(link => {
                link.addEventListener('click', function (e) {
                    e.preventDefault();
                    loadContent(this.getAttribute('href'));
                });
            });
        }

        function attachFormHandlers() {
            document.querySelectorAll('#main form').forEach(form => {
                form.addEventListener('submit', function (e) {
                    e.preventDefault();
                    const formData = new FormData(this);
                    fetch(this.getAttribute('action'), {
                        method: this.getAttribute('method') || 'POST',
                        body: formData
                    })
                    .then(response => response.text())
                    .then(data => {
                        document.getElementById('main').innerHTML = data;
                        attachLinkHandlers();
                        attachFormHandlers();
                    })
                    .catch(error => console.error('Error submitting form:', error));
                });
            });
        }

        document.addEventListener('DOMContentLoaded', () => {
            attachLinkHandlers();
            attachFormHandlers();
        });
    </script>

    <!-- Incluir dicha librería -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
</body>
</html>