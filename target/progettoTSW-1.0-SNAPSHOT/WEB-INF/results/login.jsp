<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@include file="common.jsp" %>
    <title>Login Utente - 3DTech</title>
    <link rel="stylesheet" href="${contextPath}/css/style.css" type="text/css">
</head>
<body>
<%@include file="nav-bar.jsp" %>
<div class="login">
    <form action="${contextPath}/xx/login" method="post">
        <label for="email">Email</label>
        <input class="input" type="email" id="email" name="fieldEmail"><br><br>
        <label for="password">Password:</label>
        <input class="input" type="password" id="password" name="fieldPassword"><br><br><br>
        <input class="btn-submit" type="submit" value="Accedi">
    </form>
    <br>
</div>
</body>
</html>
<!--
<html>
<head>
<title>Title</title>
</head>
<body>
<form action="login" method="post">
<label for="email">Email:</label>
<input type="email" id="email" name="fieldEmail">
<label for="password">Password:</label>
<input type="password" id="password" name="fieldPassword">
<input type="submit" value="Invia">
</form>
</body>
</html>
-->