<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Question</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
    <h2>Add New Question</h2>
    <form action="add-question" method="post">
        Question: <input type="text" name="question" required><br>
        Option 1: <input type="text" name="option1" required><br>
        Option 2: <input type="text" name="option2" required><br>
        Option 3: <input type="text" name="option3" required><br>
        Option 4: <input type="text" name="option4" required><br>
        Correct Option: 
        <select name="correct_option" required>
            <option value="option1">Option 1</option>
            <option value="option2">Option 2</option>
            <option value="option3">Option 3</option>
            <option value="option4">Option 4</option>
        </select><br>
        <button type="submit">Add Question</button>
    </form>
    <p style="color:red">${error}</p>
</body>
</html>
