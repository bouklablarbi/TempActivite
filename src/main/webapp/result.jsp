
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Activité Suggérée</title>
</head>
<body>
    <h1>Activité suggérée</h1>
    <p>En fonction de la température saisie, nous vous suggérons : <strong><%= request.getAttribute("activity") %></strong></p>
    <a href="index.jsp">Retour</a>
</body>
</html>
