<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec" %>
<c:set var="commonUrl" value="/WEB-INF/view/common/admin"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"/>
    <link rel="stylesheet" href="<c:url value="/resource/admin/menu.css"/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value="/resource/admin/header.css"/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value="/resource/admin/footer.css"/>" type="text/css"/>
    <style>
        .container{
            margin: 0;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-self: auto;
        }
    </style>
</head>
<body>
    <jsp:include page="${commonUrl}/header.jsp"/>
    <div class="container">
        <jsp:include page="${commonUrl}/menu.jsp"/>
        <dec:body></dec:body>
    </div>
    <jsp:include page="${commonUrl}/footer.jsp"/>

    <script src="<c:url value="/resource/admin/menu.js/view/common/admin/menu.js"/>"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="<c:url value="/resources/js/scripts.js"/>"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
</body>
</html>