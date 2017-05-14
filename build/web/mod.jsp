<%-- 
    Document   : Mod
    Created on : 08-may-2017, 1:09:25
    Author     : rancisco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <link rel="stylesheet" href="css/bootstrap.css" >
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "");
            Statement s = conexion.createStatement();
            
            ResultSet lista = s.executeQuery ("SELECT * FROM screens");
            

            s.execute("UPDATE screens SET"
                    + " model='" + request.getParameter("modelo")
                    + "', brand='" + request.getParameter("marca")
                    + "', price='" + String.valueOf(request.getParameter("precio"))
                    + "', description='" + String.valueOf(request.getParameter("descripcion"))
                    + "' WHERE screen_id=" + Integer.valueOf(request.getParameter("Id")));
        conexion.close();
            
        %>
        
        <div class="alert alert-success" role="alert">Se ha modificado correctamente!</div>
        <div> <a class ="btn btn-primary" href = "index.jsp"> Volver</a>
        
    </body>
</html>
