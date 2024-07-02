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

    <!-- Contenido -->
    <main class="flex-shrink-0">
        <div class="container">
            <h3 class="my-3">Nuevo empleado</h3>

            <form action="#" class="row g-3" method="post" autocomplete="off">
                <div class="col-md-4">
                    <label for="clave" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="clave" name="clave" required autofocus>
                </div>
                <div class="col-md-4">
                    <label for="clave" class="form-label">Nombre2</label>
                    <input type="text" class="form-control" id="clave" name="clave" required autofocus>
                </div>
                <div class="col-md-4">
                    <label for="clave" class="form-label">Apellido1</label>
                    <input type="text" class="form-control" id="clave" name="clave" required autofocus>
                </div> 
                <div class="col-md-4">
                    <label for="clave" class="form-label">Apellido2</label>
                    <input type="text" class="form-control" id="clave" name="clave" required autofocus>
                </div>
                <div class="col-md-4">
                    <label for="clave" class="form-label">Usuario</label>
                    <input type="text" class="form-control" id="clave" name="clave" required autofocus>
                </div>
                <div class="col-md-4">
                    <label for="clave" class="form-label">Contraseña</label>
                    <input type="password" class="form-control" id="clave" name="clave" required autofocus>
                </div>
                
                <div class="col-12">
                    <a href="CRUD.jsp" class="btn btn-secondary">Regresar</a>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>

            </form>

        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>