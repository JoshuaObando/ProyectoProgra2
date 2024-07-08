<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException" %>
<%

    
    Connection con = null;

    //Datos de la base de datos
    String Usuario = "UsuarioColaborador";
    String Contraseña = "Joshua20000..**";
    String BD = "SistemaPagoAutobus";
    String IP = "10.153.157.145";
    String Puerto = "3306";
    String cadena = "jdbc:mysql://" + IP + ":" + Puerto + "/" + BD;//Cadena de la base de datos

    try {//Cargar el driver de mysql
        Class.forName("com.mysql.jdbc.Driver");//Sirve para cargar el driver de mysql
        con = DriverManager.getConnection(cadena, Usuario, Contraseña);//Conectar con la base de datos
        application.setAttribute("DBConnection", con);//Asignar la base de datos
    } catch (ClassNotFoundException | SQLException e) {//Manejo de excepciones
        e.printStackTrace();
        out.println("<p style='color:red'>Error: " + e.toString() + "</p>");
    }
%>