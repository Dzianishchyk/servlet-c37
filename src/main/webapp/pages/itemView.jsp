<%--
  Created by IntelliJ IDEA.
  User: Noyna
  Date: 24/01/21
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="_header.jsp"/>
<div class="container">
    <p>ID ${requestScope.item.id}</p>
    <p>Name ${requestScope.item.name}</p>
    <p>Description ${requestScope.item.description}</p>
    <p>Price ${requestScope.item.price}</p>
    <form action="/basket" method="post">
        <input type="hidden" name="id" value="${requestScope.item.id}">
        <button>Add</button>
    </form>
</div>
</body>
</html>