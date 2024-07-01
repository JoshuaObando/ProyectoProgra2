<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Estilos/EstiloAdmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <div class="navigation">
        <ul>
            <li>
                <a href="#panel-admin">
                    <span class="icon">
                        <i class="fa-solid fa-screwdriver-wrench"></i>
                    </span>
                    <span class="title">Panel Administrador</span>
                </a>
            </li>

            <li>
                <a href="#administracion">
                    <span class="icon">
                        <i class="fa-solid fa-user-tie"></i>
                    </span>
                    <span class="title">Administración</span>
                </a>
            </li>

            <li>
                <a href="#lista-empleados">
                    <span class="icon">
                        <i class="fa-solid fa-users"></i>
                    </span>
                    <span class="title">Lista de empleados</span>
                </a>
            </li>

            <li>
                <a href="#creditos">
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
        <div id="panel-admin">
            <h2>Panel Administrador</h2>
            <p>Contenido del panel administrador.</p>
        </div>
        <div id="administracion">
            <main class="flex-shrink-0">
                <div class="container">
                    <h3 class="my-3" id="titulo">Empleados</h3>
        
                    <a href="nuevo.html" class="btn btn-success">Agregar</a>
        
                    <table class="table table-hover table-bordered my-3" aria-describedby="titulo">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">Clave</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Teléfono</th>
                                <th scope="col">Correo</th>
                                <th scope="col">Departamento</th>
                                <th scope="col">Opciones</th>
                            </tr>
                        </thead>
        
                        <tbody>
                            <tr>
                                <td>12345</td>
                                <td>Milo Parra</td>
                                <td>0123456789</td>
                                <td>a494256@gmail.com</td>
                                <td>Admin</td>
                                <td>
                                    <a href="edita.html" class="btn btn-warning btn-sm me-2">Editar</a>
        
                                    <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal"
                                        data-bs-target="#eliminaModal" data-bs-id="1">Eliminar</button>
                                </td>
                            </tr>
        
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
        </div>
        <div id="lista-empleados">
            <h2>Lista de empleados</h2>
            <p>Contenido de la lista de empleados.</p>
        </div>
        <div id="creditos">
            <h2>Créditos</h2>
            <p>Contenido de los créditos.</p>
        </div>
        
    </div>
    <div class="modal fade" id="eliminaModal" tabindex="-1" aria-labelledby="eliminaModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="eliminaModalLabel">Aviso</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>¿Desea eliminar este registro?</p>
                </div>
                <div class="modal-footer">
                    <form id="form-elimina" action="" method="post">
                        <input type="hidden" name="_method" value="delete">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-danger">Eliminar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>