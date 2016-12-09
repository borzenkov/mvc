<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Hello World</title>
</head>
<body>
<header>
    <h1>Title : ${title}</h1>
</header>
<section>
    <h1>Message : ${message}</h1>
</section>
<c:if test="${pageContext.request.userPrincipal.name != null}">
Welcome : ${pageContext.request.userPrincipal.name}
        <c:url value="/logout" var="logoutUrl" />
    <form class="form-inline" action="${logoutUrl}" method="post">
        <input type="submit" value="Log out" />
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
    </c:if>
<div>Get <a href="protected">protected</a> resource for admin.</div>
<div>Get <a href="confidential">confidential</a> resource for superadmin.</div>
</body>
</html>