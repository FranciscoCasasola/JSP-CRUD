<%-- 
    Document   : añadir
    Created on : 07-may-2017, 23:39:29
    Author     : francisco
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
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <link rel="stylesheet" href="css/bootstrap.css" >
    </head>
    <body>
        
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "");
            Statement s = conexion.createStatement();            
        %>
        
        <div class="container">
            <h2>Modificar monitor</h2>
            <form class="form-horizontal" action="añadir2.jsp" method = "POST">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Id:</label>
                    <div class="col-sm-10">          
                        <input type="text" name="id"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Modelo:</label>
                    <div class="col-sm-10">          
                        <input type="text" name="modelo"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Marca:</label>
                    <div class="col-sm-10">          
                        <input type="text" name="marca" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Precio:</label>
                    <div class="col-sm-10">          
                        <input type="text" name="precio"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Descripción</label>
                    <div class="col-sm-10">          
                        <input type="text" name="descripcion"/> 
                    </div>
                </div>
                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <input class ="btn btn-default" type="submit" value="Registrar"/>
                    </div>
                </div>
            </form>
        </div>    
        
    </body>
</html>
