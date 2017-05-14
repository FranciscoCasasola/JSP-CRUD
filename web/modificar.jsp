<%-- 
    Document   : modificar
    Created on : 08-may-2017, 0:47:03
    Author     : Francisco
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
        <title>Modificar</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <link rel="stylesheet" href="css/bootstrap.css" >
    </head>
    <body>
    
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "");
            Statement s = conexion.createStatement();
            
            s.execute("SELECT * FROM screens WHERE screen_id = \"" + request.getParameter("Id") + "\"");
          
            
        %>
        <div class="container">
            <h2>Modificar monitor</h2>
            <form class="form-horizontal" action="mod.jsp" method = "POST">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Modelo:</label>
                    <div class="col-sm-10">          
                        <input type="text" name="modelo" value="<%= request.getParameter("modelo") %>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Marca:</label>
                    <div class="col-sm-10">          
                        <input type="text" name="marca" value="<%= request.getParameter("marca") %>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Precio:</label>
                    <div class="col-sm-10">          
                        <input type="text" name="precio" value="<%= request.getParameter("precio") %>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pwd">Descripción</label>
                    <div class="col-sm-10">          
                        <input type="text" name="descripcion" value= "<%= request.getParameter("descripcion") %>" /> 
                    </div>
                </div>
                <div class="form-group">        
                    <div class="col-sm-offset-2 col-sm-10">
                        <input class ="btn btn-default" type="submit" value="Registrar"/>
                    </div>
                </div>
            </form>
        </div>
        <%
            conexion.close();
        %>
    </body>
</html>
