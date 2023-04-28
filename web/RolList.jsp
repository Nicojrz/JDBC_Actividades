<%-- 
    Document   : RolList
    Created on : 28 abr 2023, 12:45:23
    Author     : alumno
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="org.nicojrz.dao.Rol"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JDBC - 1</title>
    </head>
    
    <%
        String rol = null;
        String descripcion = null;
        String accion = null;
        List<Rol>lista = null;
        
        session = request.getSession(true);
        if(session != null) {
            if(session.getAttribute("lista") == null) {
                session.setAttribute("lista", new ArrayList<Rol>());
            }
            lista = (List)session.getAttribute("lista");
        }
        
        rol = request.getParameter("rol");
        descripcion = request.getParameter("descripcion");
        accion = request.getParameter("enviar");
        
    %>
    <body style="margin-left:7%">
        <h1>Roles de usuario</h1>
        <form id="form1" method="GET">
            <label>Rol</label> <br>
            <input type="text" name="rol" id="rol"/> <br>
            
            <br>
            <label>Descripci&oacute;n:</label> <br>
            <input type="text" name="descripcion" id="descripcion"/> <br>
            
            <br>
            <input type="submit" name="enviar" value="Submit"/>
        </form>
    </body>
</html>
