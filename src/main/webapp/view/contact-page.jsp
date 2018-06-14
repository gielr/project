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
    <title>Kontakt</title>
</head>
<body>
<%@ include file="header-page.jspf" %>
<div class="container">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <legend><h2>Kontakt:</h2></legend>
            <p><strong>Formularz</strong></p>
            <form action="/mail" method="POST">
                <fieldset>
                    <p>Podaj swoj nick:<br>
                        <input type="text" name="nick"></p>
                    <p>Podaj temat wiadomosci:<br>
                        <input type="text" name="topic"></p>
                    <p>Tu wpisz tekst wiadomosci:<br>
                        <textarea rows="4" cols="50" name="text"></textarea></p>
                </fieldset>
                <input type="submit" value="Wyslij wiadomosc">
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
<%@ include file="footer-page.jspf" %>
</body>
</html>
