<%--
  Created by IntelliJ IDEA.
  User: banen
  Date: 20.09.2022
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edycja książki</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
    body{font-family: 'Poppins', sans-serif;}
    h1{font-family: 'Poppins', sans-serif;}
  </style>
</head>
<body>
<h1>Edycja książki</h1>
<form method="post">
  <input type="hidden" name="id" value="${book.id}"/>
  <input name = "title" placeholder="tytuł" value="${book.title}">
  <input name = "author" placeholder="autor" value="${book.author}">
  <input name = "description" placeholder="opis" value="${book.description}">
  <input type = "submit" value="Edytuj książkę">
</form>
</body>
</html>
