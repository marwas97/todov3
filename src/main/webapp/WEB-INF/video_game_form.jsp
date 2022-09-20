<%--
  Created by IntelliJ IDEA.
  User: banen
  Date: 20.09.2022
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Gra wideo</title>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');
    body{font-family: 'Poppins', sans-serif;}
    form{font-family: 'Poppins', sans-serif;}
    h1{font-family: 'Poppins', sans-serif;}
    head{font-family: 'Poppins', sans-serif;}
    </style>
</head>
<body>
<h1>Dodaj grę</h1>
<%--@elvariable id="videoGame" type="com.testarmy.entity.VideoGame"--%>
<form:form method="post" action="/game/save" modelAttribute="videoGame">
  <form:hidden path="id"/>
  <form:input path="title" placeholder="Tytuł"/>
  <form:input path="author" placeholder="Autor"/>
  <form:input path="description" placeholder="Opis"/>
  <input type="submit" value="Zapisz">
</form:form>
</body>
</html>
