<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
    <h3 class="my-3">Nuevo empleado</h3>
    <form action="save.jsp" class="row g-3" method="post" autocomplete="off">
        <div class="col-md-4">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" required autofocus>
        </div>
        <div class="col-md-4">
            <label for="nombre2" class="form-label">Nombre2</label>
            <input type="text" class="form-control" id="nombre2" name="nombre2" required>
        </div>
        <div class="col-md-4">
            <label for="apellido1" class="form-label">Apellido1</label>
            <input type="text" class="form-control" id="apellido1" name="apellido1" required>
        </div>
        <div class="col-md-4">
            <label for="apellido2" class="form-label">Apellido2</label>
            <input type="text" class="form-control" id="apellido2" name="apellido2" required>
        </div>
        <div class="col-md-4">
            <label for="usuario" class="form-label">Usuario</label>
            <input type="text" class="form-control" id="usuario" name="usuario" required>
        </div>
        <div class="col-md-4">
            <label for="clave" class="form-label">Contraseña</label>
            <input type="password" class="form-control" id="clave" name="clave" required>
        </div>
        <div class="col-12">
            <a href="CRUD.jsp" class="btn btn-secondary">Regresar</a>
            <button type="submit" class="btn btn-primary">Guardar</button>
        </div>
    </form>
</div>