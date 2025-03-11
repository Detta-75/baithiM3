<%--
  Created by IntelliJ IDEA.
  User: LE TRAN CONG DAT
  Date: 3/11/2025
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
  <title>Add New Product</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
  <h2>Add new product</h2>
  <form action="productServlet?action=create" method="post">
    <div class="mb-3">
      <label class="form-label">Name</label>
      <input type="text" name="name" class="form-control" required>
    </div>
    <div class="mb-3">
      <label class="form-label">Price</label>
      <input type="number" name="price" class="form-control" step="0.01" required>
    </div>
    <div class="mb-3">
      <label class="form-label">Quantity</label>
      <input type="number" name="quantity" class="form-control" required>
    </div>
    <div class="mb-3">
      <label class="form-label">Color</label>
      <input type="text" name="color" class="form-control" required>
    </div>
    <div class="mb-3">
      <label class="form-label">Description</label>
      <textarea name="description" class="form-control" rows="3"></textarea>
    </div>
<%--    <div class="mb-3">--%>
<%--      <label class="form-label">Category</label>--%>
<%--      <select name="categoryId" class="form-select" required>--%>
<%--        <c:forEach var="cat" items="${categories}">--%>
<%--          <option value="${cat.id}">${cat.name}</option>--%>
<%--        </c:forEach>--%>
<%--      </select>--%>
<%--    </div>--%>
    <button type="submit" class="btn btn-success">✅ Create</button>
    <a onclick="window.location.href='/product'" class="btn btn-secondary">🔙 Back</a>
  </form>
</div>
</body>
</html>
