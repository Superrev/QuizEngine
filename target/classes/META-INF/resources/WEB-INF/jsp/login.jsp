<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>


<head>
    <title>Login</title>
</head>
<body background="http://wallpapercave.com/wp/4fomzZe.png">
    <section>
<h1>ARE YOU THE ONE?</h1>
<p>If you are not thee original creator please do not add questions to quiz (A.K.A. THE MATRIX)</p>
<c:if test="${param.error != null}">
    <br><br><div>There has been a Glitch....You do not have the Authority here...Agents have been Notified</div><br><br>
</c:if>
<c:if test="${!empty logout}">
    <br><br><div>You have been logged out.</div><br><br>
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
    </section>

<br>
<a href="/">Home</a>
<br>
</body>
</html>
