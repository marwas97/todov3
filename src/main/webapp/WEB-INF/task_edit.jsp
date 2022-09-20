<%--
  Created by IntelliJ IDEA.
  User: banen
  Date: 20.09.2022
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edycja zadania</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
    body{font-family: 'Poppins', sans-serif;}
    h1{font-family: 'Poppins', sans-serif;}
  </style>
</head>
<body>
<h1>Edycja zadania</h1>
<form method="post">
  <input type="hidden" name="id" value="${task.id}"/>
  <input name = "name" placeholder="Nazwa" value="${task.name}">
  <input name = "description" placeholder="Opis" value="${task.description}">
  <input name = "priority" placeholder="Priorytet" value="${task.priority}">
  <input name = "done" placeholder="Status" value="${task.done}">
  <input type = "submit" value="Edytuj zadanie">
</form>
</body>
</html>
