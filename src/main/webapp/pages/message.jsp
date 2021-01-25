<%--
  Created by IntelliJ IDEA.
  User: Noyna
  Date: 15/01/21
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Message</title>
</head>
<body>
<h1> ${requestScope.message}!</h1>
<a href="/reg">Registration</a>
<a href="/auth">Authorization</a>
<a href="/">Home</a>

</body>
</html>
