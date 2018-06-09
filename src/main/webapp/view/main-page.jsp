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
    <%@ include file="header-page.jspf" %>

    <div class="row">
        <div class="col-md-6" style="max-height:300px;">
            <a href="article-page.jsp">
                <img class="" style="max-width:250px; margin:0px auto; display: block; vertical-align: center;"
                     src="${pageContext.request.contextPath}${articles[0].imageURL}" alt="panda">
            </a><br>
            <c:out value="${articles[0].title}"/><br>
            <c:out value="${articles[0].date}"/><br>
            <c:out value="${articles[0].category}"/><br>
            <c:out value="${articles[0].tekst}"/><br>
        </div>
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            <a href="article-page.jsp"><img class="" style="max-width: 200px; margin: 0px auto;"
                                            src="${pageContext.request.contextPath}${articles[1].imageURL}" alt="panda"></a><br>
            <c:out value="${articles[1].title}"/><br>
            <c:out value="${articles[1].date}"/><br>
            <c:out value="${articles[1].category}"/><br>
            <c:out value="${articles[1].tekst}"/><br>
        </div>
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            <a href="article-page.jsp"><img class="" style="max-width: 200px; margin: 0px auto;"
                                            src="${pageContext.request.contextPath}${articles[2].imageURL}" alt="panda"></a><br>
            <c:out value="${articles[2].title}"/><br>
            <c:out value="${articles[2].date}"/><br>
            <c:out value="${articles[2].category}"/><br>
            <c:out value="${articles[2].tekst}"/><br>
        </div>
    </div>

    <p></p>

    <div class="row">
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            <a href="article-page.jsp"><img class="" style="max-width: 200px; margin: 0px auto;"
                                            src="${pageContext.request.contextPath}${articles[3].imageURL}" alt="panda"></a><br>
            <c:out value="${articles[3].title}"/><br>
            <c:out value="${articles[3].date}"/><br>
            <c:out value="${articles[3].category}"/><br>
            <c:out value="${articles[3].tekst}"/><br>
        </div>
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            <a href="article-page.jsp"><img class="" style="max-width: 200px; margin: 0px auto;"
                                            src="${pageContext.request.contextPath}${articles[4].imageURL}" alt="panda"></a><br>
            <c:out value="${articles[4].title}"/><br>
            <c:out value="${articles[4].date}"/><br>
            <c:out value="${articles[4].category}"/><br>
            <c:out value="${articles[4].tekst}"/><br>
        </div>
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            <a href="article-page.jsp"><img class="" style="max-width: 200px; margin: 0px auto;"
                                            src="${pageContext.request.contextPath}${articles[5].imageURL}" alt="panda"></a><br>
            <c:out value="${articles[5].title}"/><br>
            <c:out value="${articles[5].date}"/><br>
            <c:out value="${articles[5].category}"/><br>
            <c:out value="${articles[5].tekst}"/><br>
        </div>
        <div class="col-md-3" style="max-height: 300px; display: block; vertical-align: bottom;">
            <a href="article-page.jsp"><img class="" style="max-width: 200px; margin: 0px auto;"
                                            src="${pageContext.request.contextPath}${articles[6].imageURL}" alt="panda"></a><br>
            <c:out value="${articles[6].title}"/><br>
            <c:out value="${articles[6].date}"/><br>
            <c:out value="${articles[6].category}"/><br>
            <c:out value="${articles[6].tekst}"/><br>
        </div>
    </div>
</div>
<p></p>

<%@ include file="footer-page.jspf" %>
</body>
</html>
