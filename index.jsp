<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="Estilos/EstiloLogin.css">
    <title>Proyecto Web con JSP</title>
</head>
<body>

    <div     class="Login">
        <form action="PanelAdmin.jsp" class="formulario">
   
           <h2>INGRESO</h2>
           <div class="entrada">
               <input type="text" placeholder="Usuario">
               <i class="fa-solid fa-user"></i>
           </div>
           <div class="entrada">
               <input type="password" name="" id="" placeholder="contraseña">
               <i class="fa-solid fa-lock"></i>
           </div>
           
           <button>Iniciar Sesión</button>
           
        </form>
   
       </div>
    
    
</body>
</html>