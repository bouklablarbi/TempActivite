
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Indiquer la Température</title>
</head>
<body>
    <h1>TP A18 Larbi BOUKLAB</h1>
    <h3>Entrez la température actuelle (°C)</h3>
    <form action="temperature" method="post">
        <label for="temperature">Température (en °C):</label>
        <input type="number" id="temperature" name="temperature" required>
        <button type="submit">Envoyer</button>
    </form>
</body>
</html>
