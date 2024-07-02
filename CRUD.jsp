<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
    <h3 class="my-3" id="titulo">Empleados</h3>
    <a href="nuevo.jsp" class="btn btn-success">Agregar</a>
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
                    <a href="edita.jsp" class="btn btn-warning btn-sm me-2">Editar</a>
                    <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal"
                            data-bs-target="#eliminaModal" data-bs-id="1">Eliminar</button>
                </td>
            </tr>
        </tbody>
    </table>
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