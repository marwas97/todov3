<%--
  Created by IntelliJ IDEA.
  User: banen
  Date: 20.09.2022
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Usuń książkę</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
    body{font-family: 'Poppins', sans-serif;}
    h1{font-family: 'Poppins', sans-serif;}
  </style>
</head>
<body>
<h1>Czy chcesz usunąć poniższe zadanie?</h1>
<h2>${task.name}</h2>
<form method="post">
  <input type="submit" name="delete" value="Usuń">
  <input type="submit" value="Anuluj">
</form>
</body>
</html>
