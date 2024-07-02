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
    <!-- ========================= Menú ==================== -->
    <div class="navigation">
        <ul>
            <li>
                <a href="">
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
    <!-- ========================= Main ==================== -->
    <div class="main">
        <div id="panel-admin">
            <h2>Panel Administrador</h2>
            <p>Contenido del panel administrador.</p>
        </div>
        <!-- ========================= Panel administrador principal ==================== -->
        <div id="administracion">
            <h3 class="my-3" id="titulo">Empleados</h3>
            <a href="#nuevo" class="btn btn-success">Agregar</a>
            <table class="table table-hover table-bordered my-3" aria-describedby="titulo">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">Cédula</th>
                        <th scope="col">Nombre1</th>
                        <th scope="col">Nombre2</th>
                        <th scope="col">Apellido1</th>
                        <th scope="col">Apellido2</th>
                        <th scope="col">Usuario</th>
                        <th scope="col">Contraseña</th>
                        <th scope="col">Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>604900217</td>
                        <td>Maylo</td>
                        <td>Daring</td>
                        <td>Parra</td>
                        <td>Aguirre</td>
                        <td>MayloParra</td>
                        <td>Admin123</td>
                        <td>
                            <a href="#edita" class="btn btn-warning btn-sm me-2">Editar</a>
                            <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal"
                                    data-bs-target="#eliminaModal" data-bs-id="1">Eliminar</button>
                        </td>
                    </tr>
                </tbody>
            </table>
            
            
        </div>
        <!-- ========================= Créditos ==================== -->
        <div id="creditos">
            <h2>Créditos del proyecto número 2</h2>
  
        </div>
        <!-- ========================= Panel editar ==================== -->
        <div id="edita">
            <div class="CRUD">
            <h3 class="my-3">Editar empleado</h3>

            <form action="#" class="row g-3" method="post" autocomplete="off">

                <div class="col-md-4">
                    <label for="clave" class="form-label">Cédula</label>
                    <input type="text" class="form-control" id="Cedula" name="Cedula" required autofocus>
                </div>

                <div class="col-md-8">
                    <label for="nombre" class="form-label">Nombre1</label>
                    <input type="text" class="form-control" id="nombre1" name="nombre1" required>
                </div>
                <div class="col-md-8">
                    <label for="nombre" class="form-label">Nombre2</label>
                    <input type="text" class="form-control" id="nombre2" name="nombre2" required>
                </div>
                <div class="col-md-8">
                    <label for="nombre" class="form-label">Apellido1</label>
                    <input type="text" class="form-control" id="Apellido1" name="Apellido1" required>
                </div>
                <div class="col-md-8">
                    <label for="nombre" class="form-label">Apellido2</label>
                    <input type="text" class="form-control" id="Apellido2" name="Apellido2" required>
                </div>
                <div class="col-md-8">
                    <label for="nombre" class="form-label">Usuario</label>
                    <input type="text" class="form-control" id="Usuario" name="Usuario" required>
                </div>
                <div class="col-md-8">
                    <label for="nombre" class="form-label">Contraseña</label>
                    <input type="password" class="form-control" id="Contraseña" name="Contraseña" required>
                </div>


                <div class="col-12">
                    <a href="#administracion" class="btn btn-secondary">Regresar</a>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>

            </form>
            </div>
        </div>
        <!-- ========================= Panel de nuevo empleado ==================== -->
        <div id="nuevo">
            <div class="CRUD">
            <h3 class="my-3">Nuevo empleado</h3>

            <form action="#" class="row g-3" method="post" autocomplete="off">
                <div class="col-md-4">
                    <label for="clave" class="form-label">Cédula</label>
                    <input type="text" class="form-control" id="Cedula" name="Cedula" required autofocus>
                </div>

                <div class="col-md-8">
                    <label for="nombre" class="form-label">Nombre1</label>
                    <input type="text" class="form-control" id="nombre1" name="nombre1" required>
                </div>
                <div class="col-md-8">
                    <label for="nombre" class="form-label">Nombre2</label>
                    <input type="text" class="form-control" id="nombre2" name="nombre2" required>
                </div>
                <div class="col-md-8">
                    <label for="nombre" class="form-label">Apellido1</label>
                    <input type="text" class="form-control" id="Apellido1" name="Apellido1" required>
                </div>
                <div class="col-md-8">
                    <label for="nombre" class="form-label">Apellido2</label>
                    <input type="text" class="form-control" id="Apellido2" name="Apellido2" required>
                </div>
                <div class="col-md-8">
                    <label for="nombre" class="form-label">Usuario</label>
                    <input type="text" class="form-control" id="Usuario" name="Usuario" required>
                </div>
                <div class="col-md-8">
                    <label for="nombre" class="form-label">Contraseña</label>
                    <input type="password" class="form-control" id="Contraseña" name="Contraseña" required>
                </div>
                
                <div class="col-12">
                    <a href="#administracion" class="btn btn-secondary">Regresar</a>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>

            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
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
  
</body>
</html>