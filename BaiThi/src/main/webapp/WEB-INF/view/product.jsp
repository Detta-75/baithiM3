<%--
  Created by IntelliJ IDEA.
  User: LE TRAN CONG DAT
  Date: 3/11/2025
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Product Management</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<div class="container mt-4">
    <h2>Management Product</h2>
    <div class="card p-3">
        <h5>🔍 Find Product</h5>
        <form class="row g-3">
            <div class="col-md-2">
                <input type="text" class="form-control" placeholder="Enter Product Name">
            </div>
            <div class="col-md-2">
                <input type="number" class="form-control" placeholder="Enter Price">
            </div>
            <div class="col-md-2">
                <input type="text" class="form-control" placeholder="Enter Category">
            </div>
            <div class="col-md-2">
                <input type="text" class="form-control" placeholder="Enter Color">
            </div>
            <div class="col-md-2">
                <button type="submit" class="btn btn-primary">🔎 Search</button>
            </div>
        </form>
    </div>

    <button class="btn btn-dark mt-3", onclick="window.location.href='/product?action=create'">➕ Add Product</button>

    <table class="table table-bordered table-striped mt-3">
        <thead class="table-primary">
        <tr>
            <th>STT</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Color</th>
            <th>Category</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="item" items="${products}" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${item.name}</td>
                <td><fmt:formatNumber value="${item.price}" type="number" pattern="#,##0.##" /></td>
                <td>${item.quantity}</td>
                <td>${item.color}</td>
                <td>
                    <c:forEach var="cat" items="${categories}">
                        <c:if test="${cat.id eq item.categoryId}">
                            ${cat.name}
                        </c:if>
                    </c:forEach>
                </td>
                <td>
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="##delete${status.index}">
                        Xóa
                    </button>
                    <button class="btn btn-danger btn-sm" >🗑 Delete</button>
                </td>
<%--                <!-- Modal -->--%>
<%--                <div class="modal fade" id="#delete${status.index}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">--%>
<%--                    <div class="modal-dialog modal-dialog-centered" role="document">--%>
<%--                        <div class="modal-content">--%>
<%--                            <div class="modal-header">--%>
<%--                                <h5 class="modal-title" id="exampleModalLongTitle">Xóa ${status.index}</h5>--%>
<%--                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
<%--                                    <span aria-hidden="true">&times;</span>--%>
<%--                                </button>--%>
<%--                            </div>--%>
<%--                            <div class="modal-body">--%>
<%--                                Bạn có muốn xóa nhân viên có mã là ${item.ma} này không--%>
<%--                                <br>--%>
<%--                                <i style="color: red">    Hành động này không thể hoàn tác</i>--%>
<%--                            </div>--%>
<%--                            <div class="modal-footer">--%>
<%--                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>--%>
<%--                                <button type="button" class="btn btn-primary" >Xác nhận</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
