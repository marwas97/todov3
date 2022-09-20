<%--
  Created by IntelliJ IDEA.
  User: banen
  Date: 20.09.2022
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Lista gier wideo</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
    body{font-family: 'Poppins', sans-serif;}
    h1{text-align: center}
    td {padding: 10px}
    tr:nth-child(2n){background-color: paleturquoise}
    tr:hover{ background-color: rgba(0,0,255,0.75)}
    a {text-decoration: none; border: 1px solid green; background: palegreen}
    a.delete {background-color: lightcoral}
    a.delete:hover {background-color: indianred}
  </style>
</head>
<body>
<h1>Lista gier</h1>
<table>
  <tr>
    <th>Tytuł</th>
    <th>Autor</th>
    <th>Opis</th>
    <th>Edycja</th>
    <th>Usuwanie</th>
  </tr>
  <c:forEach items="${gameList}" var="videoGame">
    <tr>
      <td>${videoGame.title}</td>
      <td>${videoGame.author}</td>
      <td>${videoGame.description}</td>
      <td><a href="/game/edit/${videoGame.id}">Edytuj</a></td>
      <td><a href="/game/delete/${videoGame.id}" class="delete">Usuń</a></td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
