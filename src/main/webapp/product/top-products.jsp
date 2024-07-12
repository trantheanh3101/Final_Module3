<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/10/2024
  Time: 11:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Top Sản phẩm bán chạy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Danh sách Top Sản phẩm bán chạy</h1>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Số thứ tự</th>
            <th>Mã</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Discount</th>
            <th>Số lượng tồn kho</th>
<%--            <th>total sales</th>--%>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${topProducts}" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.discount}</td>
                <td>${product.stockQuantity}</td>
<%--                <td>${product.totalSales}</td>--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>


