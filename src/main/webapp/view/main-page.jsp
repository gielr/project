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
<%@ include file="header-page.jspf" %>
<div class="container">
    <div class="row">
        <div class="col-md-12" style="max-height:1200px;">
            <a href="/article/1">
                <img class="" style="max-width:900px; margin:0px auto; display: block; vertical-align: center;"
                     src="${pageContext.request.contextPath}${articles[0].imageURL}" alt="panda">
            </a><br>
            <p><c:out value="${articles[0].title}"/><br>
                <c:out value="${articles[0].date}"/><br>
                <c:out value="${articles[0].category}"/><br>
                <c:out value="${articles[0].tekst}"/></p>
        </div>
        <c:forEach var="i" begin="1" end="${6}">
            <div class="col-md-4" style="max-height: 300px;">
                <a href="/article/${i}"><img class=""
                                          style="max-width: 200px; margin: 0px auto; display: block; vertical-align: center;"
                                          src="${pageContext.request.contextPath}${articles[i].imageURL}"
                                          alt="panda"></a><br>
                <p><c:out value="${articles[i].title}"/><br>
                    <c:out value="${articles[i].date}"/><br>
                    <c:out value="${articles[i].category}"/><br>
                    <c:out value="${articles[i].tekst}"/></p>
            </div>
        </c:forEach>
    </div>
</div>
<%@ include file="footer-page.jspf" %>
</body>
</html>
