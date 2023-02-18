<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>list computers</title>
</head>
<body>
<h1>Computer List</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Ram</th>
        <th>Detail</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="computer" items="${computers}">
        <tr>
            <td>${computer.getId()}</td>
            <td>${computer.getBrand()}</td>
            <td>${computer.getPrice()}</td>
            <td>${computer.getRam()}</td>
            <td>${computer.getDetail()}</td>
            <td><a href="/computers?action=edit&id=${computer.getId()}">Edit</a></td>
            <td><a href="/computers?action=delete&id=${computer.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
    <p><a href="/computers?action=add">Add new computer</a></p>
</table>
</body>
</html>
