<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.quizapp.model.User" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>Welcome, <%= user.getName() %>!</h2>
    <a href="quiz">Take Quiz</a> | 
    <a href="add-question.jsp">Add Question</a> | 
    <a href="logout.jsp">Logout</a>
</body>
</html>
