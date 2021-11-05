<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%@page import="java.util.List"%>
<%
    List<Producto> lista = (List<Producto>) request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Index</title>
    </head>
    <body bgcolor="cadetblue">
        <font face="Candara" size="4" color=LightYellow>
          <h1>PRODUCTOS</h1>
    <p><a href="MainController?op=nuevo">Nuevo Producto</a></p>
    <table border="l">
        <tr>
            <th>ID</th>
            <th>PRODUCTO</th>
            <th>PRECIO</th>
            <th>CANTIDAD</th>
            <th colspan="2">ACCIONES</th>
        </tr>
        <c:forEach var="item" items="${lista}">
         <tr>
             <td>${item.id}</td>
             <td>${item.producto}</td>
             <td>${item.precio}</td>
             <td>${item.cantidad}</td>
             <td><a href="MainController?op=editar&id=${item.id}">Modificar</a></td>
             <td><a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('¿Está seguro de eliminar?'))">Eliminar</a></td>
         </tr>
        </c:forEach>
    </table>
    </body>
</html>
