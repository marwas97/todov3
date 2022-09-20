<%--
  Created by IntelliJ IDEA.
  User: banen
  Date: 20.09.2022
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj zadanie</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
        body{font-family: 'Poppins', sans-serif;}
        h1{font-family: 'Poppins', sans-serif;}
    </style>
</head>
<body>
<h1>Dodaj zadanie</h1>
<form method="post">
    <input name = "name" placeholder="Nazwa">
    <input name = "description" placeholder="Opis">
    <input name = "priority" placeholder="Priorytet">
    <input name = "done" placeholder="Status">
    <input type = "submit" value="Dodaj zadanie">
</form>
</body>
</html>
