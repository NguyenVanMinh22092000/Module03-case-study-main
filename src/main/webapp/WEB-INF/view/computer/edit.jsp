<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit form</title>
</head>
<body>
<form action="/computers?action=edit" method="post">
    <h1>Update Computer</h1>
    <hr>
    <input type="hidden" name="id" value="${computer.getId()}">
    <lable>Brand</lable>
    <input type="text" name="brand" value="${computer.getBrand()}"> <br>
    <lable>Brand</lable>
    <input type="number" name="price" value="${computer.getPrice()}"> <br>
    <lable>Brand</lable>
    <input type="number" name="ram" value="${computer.getRam()}"> <br>
    <lable>Brand</lable>
    <input type="text" name="detail" value="${computer.getDetail()}"> <br>
    <input type="submit" value="UPDATE">
</form>
</body>
</html>
