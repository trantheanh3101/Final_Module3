<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/10/2024
  Time: 11:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Top Selling Products</title>
    <!-- Add your CSS stylesheets and JavaScript files here -->
</head>
<body>
<h1>Top Selling Products</h1>

<c:if test="${not empty topProducts}">
    <table border="1">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Discount</th>
            <th>Stock Quantity</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${topProducts}" var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.discount}%</td>
                <td>${product.stockQuantity}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>

<c:if test="${empty topProducts}">
    <p>No top selling products found.</p>
</c:if>

<!-- Add any additional HTML or dynamic content here -->
</body>
</html>

