<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delele form</title>
</head>
<body>
<form action="/customers?action=delete" style="border: 1px solid seagreen" method="post">
    <h1>Are you sure?</h1>
    <input type="hidden" name="id" value="${computer.getId()}">
    <input type="submit">
</form>
</body>
</html>
