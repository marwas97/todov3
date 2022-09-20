<%--
  Created by IntelliJ IDEA.
  User: banen
  Date: 20.09.2022
  Time: 18:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Lista zadań</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Combo&family=Oswald&family=Qwitcher+Grypen:wght@700&family=Raleway&display=swap');
    body { font-family: 'Raleway', sans-serif; font-size: 3em}
    table { min-width: 100%;}
    h1 {text-align:center}
    td { padding: 20px }
    tr:nth-child(1n) { background-color: darkolivegreen }
    tr:nth-child(2n) { background-color: royalblue }
    tr:hover { background-color: hotpink}
    a { text-decoration: none; border: 3px solid green; background-color: lightgreen; padding:10px}
    a.delete { text-decoration: none; border: 3px solid red; background-color: lightcoral; padding:10px}
    a:hover { color:white; background-color: darkgreen}
    a.delete:hover { color:white; background-color: darkred }
    a.new { background-color: dodgerblue; alignment: bottom; size: auto; ; border: 3px solid cornflowerblue;min-width: 100%}
    a.new:hover { background-color: darkcyan; alignment: bottom; size: auto}
  </style>
</head>
<br>
<h1>Lista zadań</h1>
<table>
  <tr>
    <th>Nazwa</th>
    <th>Opis</th>
    <th>Priorytet</th>
    <th>Status</th>
    <th>Edycja</th>
    <th>Usuwanie</th>
  </tr>
  <c:forEach items="${taskList}" var="task">
    <tr>
      <td>${task.name}</td>
      <td>${task.description}</td>
      <td>${task.priority}</td>
      <td>${task.done}</td>
      <td><a href="/task/edit/${task.id}">Edytuj</a></td>
      <td><a href="/task/delete/${task.id}" class="delete">Usuń</a></td>
    </tr>
  </c:forEach>
</table>
<br><a href="/task/add" class="new">Dodaj zadanie</a>
</body>
</html>

