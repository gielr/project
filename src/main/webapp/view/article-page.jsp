<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Sainti
  Date: 11.06.2018
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<!doctype html>
<html lang="pl">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<head>
    <title>Article page</title>
</head>
<body>
<%@ include file="/view/header-page.jspf" %>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <img class="" style="max-width:1200px; margin:0px auto; display: block; vertical-align: center;"
                 src="${pageContext.request.contextPath}${articles[someValue-1].imageURL}" alt="panda"><br>
            <h3><c:out value="Tytuł artykułu: ${articles[someValue-1].title}"/></h3>
            <p><c:out value="Data dodania:${articles[someValue-1].date}"/></p>
            <h6><c:out value="${articles[someValue-1].category}"/></h6>
            <p><c:out value="${articles[someValue-1].tekst}"/></p>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
<%@ include file="/view/footer-page.jspf" %>
</body>
</html>
