<%-- 
    Document   : ShowCart
    Created on : Aug 9, 2018, 4:05:29 PM
    Author     : INT303
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" 
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" 
              href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>


    </head>
    <body>
        <div class="container">
            <jsp:include page="include/Header.jsp?title=Your Shopping Cart::"/>
        <h1>Your Cart</h1>
        <table id="example" class="table">
            <thead>
            <th>No</th>
            <th>Description</th>
            <th>Quantity</th>
            <th>Unit Price</th>
            <th>TotalPrice</th>

        </thead>
        <c:set var="items" value="${sessionScope.cart.lineItems}"/>
        <c:set var="bgColorX" value="lightgray"/>
        <c:set var="bgColorY" value="white"/>
        
        
        <c:forEach items="${items}" var="cl" varStatus="vs">
            <tr style="background-color:${vs.count%2==1?bgColorX:bgColorY}">
                <td>${vs.count}</td>
                <td>${cl.product.productName}</td>
                <td>${cl.quantity}</td>
                <td>${cl.product.msrp}</td>
                <td >
                    <fmt:formatNumber value="${cl.totalPrice}" pattern="#,###.00"/>
                </td>
            </tr>
            <td colspan="2"></td>
            
        </c:forEach>
            <tr>
                <td colspan="3"></td>
                <td>Total Quantity ${cart.totalQuantity}</td>
                <td>Total Price ${cart.totalPrice}</td>
                 <fmt:formatNumber value="${cart.totalPrice}" pattern="#,###.00"/>
                
            </tr>
    </table>
        </div>
</body>
</html>

