<%--
  Created by IntelliJ IDEA.
  User: banen
  Date: 20.09.2022
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj książkę</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
        body{font-family: 'Poppins', sans-serif;}
        h1{font-family: 'Poppins', sans-serif;}
    </style>
</head>
<body>
<h1>Dodaj książkę</h1>
<form method="post">
    <input name = "title" placeholder="tytuł">
    <input name = "author" placeholder="autor">
    <input name = "description" placeholder="opis">
    <input type = "submit" value="Dodaj książkę">
</form>
</body>
</html>
