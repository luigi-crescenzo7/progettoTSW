<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>
    Email: ${sessionScope.user.email}<br>
    Nome: ${sessionScope.user.name}<br>
</h1>
<ul>
    <c:forEach items="${applicationScope.listProducts}" var="product">
        <form action="${pageContext.request.contextPath}/ll/select" method="post">
            <li>${product.nome}</li>
            <input type="hidden" name="productId" value="${product.id}">
            <input type="submit" value="Seleziona">
        </form>
    </c:forEach>
</ul>

<c:if test="${sessionScope.products != null}">
    <b>Prodotti nel carrello:</b><br>
    <ul>
        <c:forEach items="${products}" var="prodotto">
            <li> ${prodotto.nome} - ${prodotto.id}</li>
        </c:forEach>
    </ul>
</c:if>
<fieldset>
    <legend>
        <form action="${pageContext.request.contextPath}/tt/orders" method="post">
            <input type="submit" value="Visualizza ordini">
        </form>
    </legend>
</fieldset>
<br>
<form action="logout" method="post">
    <input type="submit" value="Logout">
</form>
</body>
</html>