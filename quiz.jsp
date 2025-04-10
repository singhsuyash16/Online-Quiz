<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.quizapp.model.Question" %>
<%
    List<Question> questions = (List<Question>) request.getAttribute("questions");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Quiz</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>Quiz</h2>
    <form action="submit-quiz" method="post">
        <%
            int index = 1;
            for (Question q : questions) {
        %>
            <p><%= index + ". " + q.getQuestion() %></p>
            <input type="radio" name="q<%= index %>" value="option1"> <%= q.getOption1() %><br>
            <input type="radio" name="q<%= index %>" value="option2"> <%= q.getOption2() %><br>
            <input type="radio" name="q<%= index %>" value="option3"> <%= q.getOption3() %><br>
            <input type="radio" name="q<%= index %>" value="option4"> <%= q.getOption4() %><br>
            <input type="hidden" name="correct<%= index %>" value="<%= q.getCorrectOption() %>">
            <hr>
        <%
                index++;
            }
        %>
        <input type="hidden" name="total" value="<%= questions.size() %>">
        <button type="submit">Submit Quiz</button>
    </form>
</body>
</html>
