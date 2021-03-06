<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <%@include file="common.jsp" %>
    <title>Login Utente - 3DTech</title>
    <link rel="stylesheet" href="${contextPath}/css/navbar.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/css/login.css" type="text/css">
</head>
<body>
<%@include file="nav-bar.jsp" %>
<div id="alert-box" class="alert">
    <c:if test="${not empty requestScope.errorMessages}">
        <c:forEach items="${requestScope.errorMessages}" var="message">
            <p>${message}</p>
        </c:forEach>
        <script>
            document.querySelector("#alert-box").style.display = "block"
        </script>
    </c:if>
</div>

<c:choose>
    <c:when test="${empty sessionScope.userSession}">
        <div class="form-input">
            <form id="loginForm" action="${contextPath}/account/login" method="post">
                <label for="email">Email</label>
                <input class="input" type="email" id="email" name="fieldEmail" required>
                <span class="error"></span>
                <br><br>
                <label for="password">Password:</label>
                <input class="input" type="password" id="password" minlength="8" maxlength="16" name="fieldPassword"
                       required>
                <span class="error"></span>
                <br><br><br>
                <button class="btn-submit" type="submit">Accedi</button>
            </form>
            <br>
        </div>
    </c:when>
    <c:otherwise>
        <p style="text-align: center; font-size: 2.3em;">Sei già loggato!</p>
    </c:otherwise>
</c:choose>
</body>
</html>