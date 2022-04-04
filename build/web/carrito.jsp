<%-- 
    Document   : productosTienda
    Created on : 10/01/2022, 01:34:41 PM
    Author     : Daniel y Kevin Pc
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Carrito"%>
<%@page import="beans.RegistroBeansP"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ListIterator"%>
<%@page import="DAO.RegistroDAOP"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="commons/cdn.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/global.css" type="text/css">
        <title>Carrito - Alore Store</title>
    </head>
    <body>
        <%@include file="commons/cabecera.jsp" %>
        <div class="container mt-4">
            <h2>Carrito</h2>
            <div class="row">
                <table class="table table-striped">
                    <tr>
                        <th>Producto</th>
                        <th>Nombres</th>
                        <th>Descripción</th>
                        <th>Precio</th>
                        <th>Cantidad</th>
                        <th>Subtotal</th>
                        <th>Acción</th>
                    </tr>
                    
                    <c:forEach var="car" items="${carrito}">
                    <tr>
                        <td>${car.getNombres()}</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td> 
                    </tr>
                    </c:forEach>
                    
                    
                </table> 
            </div>
            <div class="col-sm-4">
                <div class="shadow p-3 mb-5 bg-body rounded">
                    
                    <div class="card">
                        <div class="card-header">
                            <h3>Compra</h3>
                        </div>
                        <div class="card-body">
                            <label>Subtotal<i class="fas fa-cart-plus">(<label style="color: fuchsia">${contador}</label>)</i></label>
                            <input type="text" readonly="" class="form-control">
                        </div>
                        <div class="card-footer">
                            <a href="#" class="btn btn-info btn-block">Realizar pago</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <%@include file="commons/pie.jsp" %>


    </body>
</html>
