<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <%@include file="common.jsp" %>
    <title>Gestione Categorie - Dashboard</title>
    <link rel="stylesheet" href="${contextPath}/css/navbar.css" type="text/css">
    <link rel="stylesheet" href="${contextPath}/css/modal.css" type="text/css">
    <script defer src="${contextPath}/js/hamburger.js"></script>
    <script src="${contextPath}/js/showModal.js" defer></script>
</head>
<body>
<%@include file="admin-nav.jsp" %>
<aside class="sidebar">
    <div class="hamburger_menu">
        <a href="${contextPath}/controlpanel/products">Gestisci prodotti</a>
        <a href="#">Gestisci utenti</a>
        <a href="${contextPath}/controlpanel/categories">Gestione categorie</a>
        <form action="${contextPath}/account/logout" method="post">
            <a class="logout">
                <button type="submit">Logout</button>
            </a>
        </form>
    </div>
</aside>

<div class="table-container-cat">
    <table class="rtable">
        <thead>
        <tr>
            <th>Info</th>
            <th>Id</th>
            <th>Nome</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${applicationScope.listCategories}" var="category">
            <tr>
                <td>
                    <button class="show-info" value="${category.id}">clicca</button>
                    <input type="hidden" value="${category.id}">
                </td>
                <td>${category.id}</td>
                <td>${category.nome}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="modal" id="modal-box">
    <input type="hidden" name="modal-type" value="category">
    <div class="modal-content">
    </div>
</div>
</body>
</html>