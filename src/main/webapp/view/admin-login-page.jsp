<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Sainti
  Date: 12.06.2018
  Time: 18:38
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
    <title>Login page</title>
</head>
<body>
<%@ include file="/view/header-page.jspf" %>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <form action="/admin/panel" method="POST">
                <fieldset>
                    <p>Login:
                        <input type="text" name="login"></p>
                    <p>Hasło:
                        <input type="password" name="password"></p>
                </fieldset>
                <br>
                <input type="submit" value="Zaloguj">
            </form>
            <p style="color: red"><c:out value="${error}"/></p>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
<%@ include file="/view/footer-page.jspf" %>
</body>
</html>
