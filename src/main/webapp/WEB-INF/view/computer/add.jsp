<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add form</title>
</head>
<body>
<form action="/computers?action=add" method="post">
    <lable>Brand</lable>
    <input type="text" name="brand" value="" placeholder="brand">
    <lable>Price</lable>
    <input type="number" name="price" value="" placeholder="price">
    <lable>Ram</lable>
    <input type="number" name="ram" value="" placeholder="ram">
    <lable>Detail</lable>
    <input type="text" name="detail" value="" placeholder="detail">
    <input type="submit" value="ADD">
</form>
</body>
</html>
