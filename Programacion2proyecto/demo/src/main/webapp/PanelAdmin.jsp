<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException" %>
<jsp:include page="Conexion.jsp" />

<%

    // Obtener la instancia de la base de datos de la aplicación
    Connection con = (Connection) application.getAttribute("DBConnection");
    PreparedStatement ps = null;
    ResultSet rs = null;

    //Obtener la cedual de usuario
    String editCedula = request.getParameter("editCedula");
    String message = request.getParameter("message");//Mensaje de confirmación

    try {
        // Consulta para obtener la información de los usuarios
        String consulta = "SELECT * FROM usuarios";
        ps = con.prepareStatement(consulta);
        rs = ps.executeQuery();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="EstiloAdmin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <title>Panel Administrador</title>
    <script>
        window.onload = function() {
            const message = "<%= message %>";
            if (message && message !== "null") {
                Swal.fire({
                    icon: 'success',
                    title: 'Operación exitosa',
                    text: message,
                });
            }
        }
    </script>
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
            <li>
                <a href="#Video">
                    <span class="icon">
                        <i class="fa-brands fa-youtube"></i>
                    </span>
                    <span class="title">Video</span>
                </a>
            <li class="Seccion">
                <a href="index.jsp">
                    <span class="icon">
                        <i class="fa-solid fa-right-to-bracket"></i>
                    </span>
                    <span class="title">Cerrar sesión</span>
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
            <h2 class="my-3" id="titulo">Empleados</h2>
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
                    <%
                        while (rs.next()) {//Mientras existan datos
                    %>
                    <tr>
                        <td><%= rs.getString("cedula") %></td>
                        <td><%= rs.getString("nombre1") %></td>
                        <td><%= rs.getString("nombre2") %></td>
                        <td><%= rs.getString("apellido1") %></td>
                        <td><%= rs.getString("apellido2") %></td>
                        <td><%= rs.getString("login") %></td>
                        <td><%= rs.getString("clave") %></td>
                        <td>
                            <a href="PanelAdmin.jsp?editCedula=<%= rs.getString("cedula") %>&nombre1=<%= rs.getString("nombre1") %>&nombre2=<%= rs.getString("nombre2") %>&apellido1=<%= rs.getString("apellido1") %>&apellido2=<%= rs.getString("apellido2") %>&usuario=<%= rs.getString("login") %>&contrasena=<%= rs.getString("clave") %>#edita" class="btn btn-warning btn-sm me-2">Editar</a>
                            <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#eliminaModal" data-bs-id="<%= rs.getString("cedula") %>">Eliminar</button>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
        <!-- ========================= Créditos ==================== -->
        <div id="creditos">
            <h2>Créditos del proyecto número 2</h2>
            <div class="credits-container">
                <div class="credit-item">
                    <img src="Imagenes/Maylo.jpg" alt="Maylo" class="img-fluid">
                    <p>Nombre de estudiante: Maylo Daring Parra Aguirre <br>
                      Posición en el proyecto: Frontend developer
                    </p>
                </div>
                <div class="credit-item">
                    <img src="Imagenes/Joshua Obando.jpeg" alt="Joshua" class="img-fluid">
                    <p>Nombre de estudiante: Joshua David Obando <br>
                        Posición en el proyecto: Backend developer
                      </p>
                </div>
            </div>
        </div>
        <!-- ========================= Panel editar ==================== -->
        <%
            if (editCedula != null && !editCedula.isEmpty()) {
        %>
        <div id="edita">
            <div class="CRUD">
            <h3 class="my-3">Editar empleado</h3>
            <form action="AdminJefeAccion.jsp" class="row g-3" method="post" autocomplete="off">
                <input type="hidden" name="action" value="update">
                <div class="col-md-4">
                    <label for="Cedula" class="form-label">Cédula</label>
                    <input type="text" class="form-control" id="Cedula" name="Cedula" value="<%= editCedula %>" required readonly>
                </div>
                <div class="col-md-8">
                    <label for="nombre1" class="form-label">Primer nombre</label>
                    <input type="text" class="form-control" id="nombre1" name="nombre1" value="<%= request.getParameter("nombre1") %>" required>
                </div>
                <div class="col-md-8">
                    <label for="nombre2" class="form-label">Segundo nombre</label>
                    <input type="text" class="form-control" id="nombre2" name="nombre2" value="<%= request.getParameter("nombre2") %>" required>
                </div>
                <div class="col-md-8">
                    <label for="Apellido1" class="form-label">Primer apellido</label>
                    <input type="text" class="form-control" id="Apellido1" name="Apellido1" value="<%= request.getParameter("apellido1") %>" required>
                </div>
                <div class="col-md-8">
                    <label for="Apellido2" class="form-label">Segundo apellido</label>
                    <input type="text" class="form-control" id="Apellido2" name="Apellido2" value="<%= request.getParameter("apellido2") %>" required>
                </div>
                <div class="col-md-8">
                    <label for="Usuario" class="form-label">Usuario</label>
                    <input type="text" class="form-control" id="Usuario" name="Usuario" value="<%= request.getParameter("usuario") %>" required>
                </div>
                <div class="col-md-8">
                    <label for="Contraseña" class="form-label">Contraseña</label>
                    <input type="password" class="form-control" id="Contraseña" name="Contraseña" value="<%= request.getParameter("contrasena") %>" required>
                </div>
                <div class="col-12">
                    <a href="#administracion" class="btn btn-secondary">Regresar</a>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </form>
            </div>
        </div>
        <%
            }
        %>
        <!-- ========================= Panel de nuevo empleado ==================== -->
        <div id="nuevo">
            <div class="CRUD">
            <h3 class="my-3">Nuevo empleado</h3>
            <form action="AdminJefeAccion.jsp" class="row g-3" method="post" autocomplete="off">
                <input type="hidden" name="action" value="add">
                <div class="col-md-4">
                    <label for="Cedula" class="form-label"></label>
                    <input type="text" class="form-control" id="Cedula" name="Cedula" required autofocus placeholder="Cedula">
                </div>
                <div class="col-md-8">
                    <label for="nombre1" class="form-label"></label>
                    <input type="text" class="form-control" id="nombre1" name="nombre1" required placeholder="Nombre1">
                </div>
                <div class="col-md-8">
                    <label for="nombre2" class="form-label"></label>
                    <input type="text" class="form-control" id="nombre2" name="nombre2" required placeholder="Nombre2">
                </div>
                <div class="col-md-8">
                    <label for="Apellido1" class="form-label"></label>
                    <input type="text" class="form-control" id="Apellido1" name="Apellido1" required placeholder="Apellido1">
                </div>
                <div class="col-md-8">
                    <label for="Apellido2" class="form-label"></label>
                    <input type="text" class="form-control" id="Apellido2" name="Apellido2" required placeholder="Apellido2">
                </div>
                <div class="col-md-8">
                    <label for="Usuario" class="form-label"></label>
                    <input type="text" class="form-control" id="Usuario" name="Usuario" required placeholder="Usuario">
                </div>
                <div class="col-md-8">
                    <label for="Contraseña" class="form-label"></label>
                    <input type="password" class="form-control" id="Contraseña" name="Contraseña" required placeholder="Contraseña">
                </div>
                <div class="col-12">
                    <a href="#administracion" class="btn btn-secondary">Regresar</a>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div>
    </div>
    <div id="Video">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/hEX6fK__1g8?si=W04dIugpOw-at3F4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
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
                    <form id="form-elimina" action="AdminJefeAccion.jsp" method="post">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="Cedula" id="deleteCedula" value="">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button type="submit" class="btn btn-danger">Eliminar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        var eliminaModal = document.getElementById('eliminaModal');
        eliminaModal.addEventListener('show.bs.modal', function (event) {
            var button = event.relatedTarget;
            var cedula = button.getAttribute('data-bs-id');
            var inputCedula = eliminaModal.querySelector('#deleteCedula');
            inputCedula.value = cedula;
        });
    </script>
</body>
</html>
<%
    } catch (SQLException e) {//Manejo de excepciones
        e.printStackTrace();
    } finally {//Cerramos los recursos
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>