<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Sainti
  Date: 08.06.2018
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<!doctype html>
<html lang="pl">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Main page</title>
</head>


<body>

<div class="container">
    <div class="row">
        <div class=col-md-12">
            TU BEDZIE FOTKA TU BEDZIE FOTKA TU BEDZIE FOTKA TU BEDZIE FOTKA TU BEDZIE FOTKA TU BEDZIE FOTKA TU BEDZIE
            FOTKA TU BEDZIE FOTKA TU BEDZIE FOTKA TU BEDZIE FOTKA TU BEDZIE FOTKA TU BEDZIE FOTKA TU BEDZIE FOTKA TU BEDZIE FOTKA TU BEDZIE
            FOTKA TU BEDZIE FOTKA
        </div>
    </div>

    <div class="row">
        <div class="col-md-6" style="max-height: 300px; display: block; vertical-align: bottom;">
            <a href="article-page.jsp"><img class="" style="max-width: 200px; margin: 15px auto;" src="${pageContext.request.contextPath}/static/img/panda.jpg" alt="panda"></a><br>
            <c:out value="${articles[0].title}"/><br>
            <c:out value="${articles[0].date}"/><br>
            <c:out value="${articles[0].category}"/><br>
            <c:out value="${articles[0].tekst}"/><br>
        </div>
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            Tu bedzie artykul 2<br>
            Tu bedzie artykul 2<br>
            Tu bedzie artykul 2<br>
            Tu bedzie artykul 2<br>
            Tu bedzie artykul 2<br>
            Tu bedzie artykul 2<br>
            Tu bedzie artykul 2<br>
            Tu bedzie artykul 2<br>
        </div>
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            Tu bedzie artykul 3<br>
            Tu bedzie artykul 3<br>
            Tu bedzie artykul 3<br>
            Tu bedzie artykul 3<br>
            Tu bedzie artykul 3<br>
            Tu bedzie artykul 3<br>
            Tu bedzie artykul 3<br>
            Tu bedzie artykul 3<br>
        </div>
    </div>

    <p></p>

    <div class="row">
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            Tu bedzie artykul 4<br>
            Tu bedzie artykul 4<br>
            Tu bedzie artykul 4<br>
            Tu bedzie artykul 4<br>
            Tu bedzie artykul 4<br>
            Tu bedzie artykul 4<br>
            Tu bedzie artykul 4<br>
            Tu bedzie artykul 4<br>
        </div>
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            Tu bedzie artykul 5<br>
            Tu bedzie artykul 5<br>
            Tu bedzie artykul 5<br>
            Tu bedzie artykul 5<br>
            Tu bedzie artykul 5<br>
            Tu bedzie artykul 5<br>
            Tu bedzie artykul 5<br>
            Tu bedzie artykul 5<br>
        </div>
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            Tu bedzie artykul 6<br>
            Tu bedzie artykul 6<br>
            Tu bedzie artykul 6<br>
            Tu bedzie artykul 6<br>
            Tu bedzie artykul 6<br>
            Tu bedzie artykul 6<br>
            Tu bedzie artykul 6<br>
            Tu bedzie artykul 6<br>
        </div>
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            Tu bedzie artykul 7<br>
            Tu bedzie artykul 7<br>
            Tu bedzie artykul 7<br>
            Tu bedzie artykul 7<br>
            Tu bedzie artykul 7<br>
            Tu bedzie artykul 7<br>
            Tu bedzie artykul 7<br>
            Tu bedzie artykul 7<br>
        </div>
    </div>
</div>

<%@ include file="footer-page.jspf" %>
</body>
</html>
