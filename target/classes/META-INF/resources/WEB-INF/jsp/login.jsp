<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body background="http://wallpapercave.com/wp/4fomzZe.png">

<head>
    <title>Login</title>
</head>
<body>

<div style="color:white" h1>ARE YOU THE ONE?</div>

<c:if test="${param.error != null}">
    <br><br><div style="color: white;">There has been a Glitch....You do not have the Authority here...Agents have been Notified</div><br><br>
</c:if>
<c:if test="${!empty logout}">
    <br><br><div style="color: white;">You have been logged out.</div><br><br>
</c:if>

<form action="<c:url value='/login'/>" method="POST">
    <input type="text" name="username" autofocus required/>
    <br>
        <input type="password" name="password" required/>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <br>
    <br>
        <input type="submit" value="Sign In"/>
</form>
<br>
<div style="color:white" a href="/">Home</div>
<br>
</body>
</body>
</html>
