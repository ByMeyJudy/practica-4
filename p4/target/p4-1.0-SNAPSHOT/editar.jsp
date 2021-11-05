<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
     Producto prod = (Producto)request.getAttribute("prod");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Editar</title>
    </head>
    <body bgcolor="cadetblue">
        <font face="Candara" size="3.5" color=LightYellow>
        <h1><c:if test="${prod.id==0}">
                Nuevo Producto
            </c:if> 
            <c:if test="${prod.id!=0}">
                Edita Producto
            </c:if> 
        </h1>
        <form action="MainController" method="post">            
                <input type="hidden" name="id" value=${prod.id}>
                <table>
                <tr>
                    <td>PRODUCTO</td>
                    <td><input type="text" name="producto" value="${prod.producto}"></td>
                </tr>
                <tr>
                    <td>PRECIO</td>
                    <td><input type="text" name="precio" value="${prod.precio}"></td>
                </tr>
                    <td>CANTIDAD</td>
                    <td><input type="number" name="cantidad" min="0" value="${prod.cantidad}"></td>
                <tr>
                    <td colspan="2"><input type="submit" value="Enviar" ></td>
                </tr>

            </table>
        </form>
    </body>
</html>
