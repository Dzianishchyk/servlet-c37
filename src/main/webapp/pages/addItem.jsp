<%--
  Created by IntelliJ IDEA.
  User: Noyna
  Date: 25/01/21
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>AddItem</title>
</head>
<body>

<jsp:include page="_header.jsp"/>
<div class="container ">
    <div class="row justify-content-center mt-5">
        <form action="/addItem" class="w-25" method="post">
            <div class="mb-3">
                <label  class="form-label">Name</label>
                <input type="text" name="name" class="form-control"  aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
                <label  class="form-label">Description</label>
                <input type="text" name="description" class="form-control" >
            </div>
            <div class="mb-3">
                <label  class="form-label">Price</label>
                <input type="text" name="price" class="form-control" >
            </div>
            <button type="submit" class="btn btn-primary">AddItem</button>
        </form>
    </div>
</div>
</body>
</html>
