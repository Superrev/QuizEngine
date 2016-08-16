<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body background="http://il9.picdn.net/shutterstock/videos/14003621/thumb/1.jpg">
<head>
    <title>QUIZ ENGINE</title>

</head>
<body>

   <span style="color:white;"> <h1>WELCOME TO THE MATRIX</h1></span><br><br>


    <p1><span style="color: white; ">Which pill will you choose???</span></p1><br><br>
    <p2><span style="color: white; ">If you choose the Red Pill, it will give you UNLIMITED POWER TO CREATE</span></p2>
    <br><br>
    <p3><span style="color: white; ">But if you choose to take the Blue pill you will go on living your ordinary life, learning code and being nothing more than what you already are</span></p3>

   <br><br><br>
    <p4><span style="color:white;">INSTRUCTIONS...IF You choose to take the BLUE PILL please fill out the fallowing information, but if you are THE ONE then please click on the RED PILL</span> </p4>


    <form name="quizStartForm" method="POST" action="/quiz/startQuiz">
       <span style="color: white;"> Name: <input type="text" name="name" /></span><br>
        <span style="color: white;"> Email: <input type="text" name="name" /></span><br><br>
        <span style="color: white;"> Quiz Category: <select name="category"> <br>
            <c:forEach var="category" items="${categories}">
                <option value="<c:out value="${category}"/>"><c:out value="${category}"/></option>
            </c:forEach>
        </span>
        </select><br><br>
        <span style="color: white;"> Quiz Type: <select name="quizType">
            <c:forEach var="QuizType" items="${QuizTypes}">
                <option value="<c:out value="${QuizType}"/>"><c:out value="${QuizType}"/></option>
            </c:forEach>
            </select>
            </span>
        </select><br><br>
        Question Type: <select name="questionType">
            <c:forEach var="questionType" items="${questionTypes}">
                <option value="<c:out value="${questionType}"/>"><c:out value="${questionType}"/></option>
            </c:forEach>
        </select><br><br>
        Question Difficulty: <select name="difficulty">
            <c:forEach var="difficulty" items="${difficulties}">
                <option value="<c:out value="${difficulty}"/>"><c:out value="${difficulty}"/></option>
            </c:forEach>
        </select><br><br>

        <img src="http://www.exohuman.com/wordpress/wp-content/uploads/2015/05/blue-pill-300x171.png"
                               alt="admin link"
                               style="width:10%;height:10%;border:0;">

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <input type="submit" value="Move On with your ordinary life as a coder">


    </form>


    <br><br><br><br>
    <a href="/admin/"> <img src="http://assets.audiomack.com/djillyjay/6e5335563d2ebed73e3a767ae65bf714.jpeg"
                           alt="admin link"
                           style="width:15%;height:20%;border:0;">
    </a>
    <p><span style="color: white; ">Fallow the Rabbit Hole</span></p>

</body>
</body>
</html>