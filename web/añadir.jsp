<%-- 
    Document   : añadir
    Created on : 07-may-2017, 23:39:29
    Author     : PcCom
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
        <title>Añadir Monitor</title>
    </head>
    <body>
        
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "");
            Statement s = conexion.createStatement();            
        %>
        
        <div align = "center">
            <div align = "left">
            <form action="añadir2.jsp" method="POST">
                <fieldset>
                    <label class = "glyphicon glyphicon-user"> Id </label> <br>
                    <input type="text" name="id" /> <br>
                    <label> Modelo </label> <br>
                    <input type="text" name="modelo" /> <br>
                    <label> Marca </label> <br>
                    <input type="text" name="marca" /> <br>
                    <label> Precio </label> <br>
                    <input type="text" name="precio" /> <br>
                    <label> Descripcion </label> <br>
                    <input type="text" name="descripcion" /> <br>
                    <input class ="btn btn-default" type="submit" value="Registrar"/>
                </fieldset>
            </form>
            </div>
        </div>    
        
    </body>
</html>
