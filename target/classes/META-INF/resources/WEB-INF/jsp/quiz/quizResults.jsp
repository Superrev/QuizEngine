<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body background="http://wallpoper.com/images/00/24/65/42/matrix-system_00246542.jpg">
<head>
    <title>QUIZ RESULTS</title>
</head>
<body>
<h1>QUIZ RESULTS</h1>
<table>
<c:if test="${not empty kevin.correct}">
    <div style="color:white;font-weight: bold;">
        <c:out value="${kevin.correct}" />
    </div>
</c:if>
<c:if test="${not empty kevin.incorrect}">
    <div style="color:white;font-weight: bold;">
        <c:out value="${kevin.incorrect}" />
    </div>
</c:if>
    <c:if test="${not empty kevin.totalQuestions}">
    <div style="color:white;font-weight: bold;">
        <c:out value="${kevin.totalQuestions}" />
    </div>
</c:if>
    <c:if test="${not empty kevin.name}">
    <div style="color:white;font-weight: bold;">
        <c:out value="${kevin.name}" />
    </div>
</c:if>

    <c:if test="${not empty kevin.email}">
         <div style="color:white;font-weight: bold;">
            <c:out value="${kevin.email}" />
         </div>
    </c:if>
<br><br>
</table>
<br><br>
<a href="/">Quiz Me Again</a> | <a href="/admin/">admin</a>
<a href="dashboard.jsp"> dashboard </a>
</body>
</body>
</html>