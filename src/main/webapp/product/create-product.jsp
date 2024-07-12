<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 7/10/2024
  Time: 10:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    title>Danh sách học sinh</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Trang chủ</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="/product">Product</a>
            </div>
        </div>
        <form class="d-flex" action="product" method="post">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
            <input type="hidden" name="action" value="search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>
</nav>
<div class="container mt-5">
    <h2>Thêm mới sản phẩm</h2>
    <form method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Name:</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>

        <div class="mb-3">
            <label for="price" class="form-label">Price:</label>
            <input type="number" class="form-control" id="price" name="price" min="100" required>
        </div>

        <div class="mb-3">
            <label for="discount" class="form-label">Discount:</label>
            <select class="form-select" id="discount" name="discount" required>
                <option value="5%">5%</option>
                <option value="10%">10%</option>
                <option value="15%">15%</option>
                <option value="20%">20%</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="stock" class="form-label">Stock:</label>
            <input type="number" class="form-control" id="stock" name="stock" min="10" required>
        </div>

        <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
    </form>
</div>
</body>
</html>
