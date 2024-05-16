<%-- 
    Document   : buscador
    Created on : May 16, 2024, 4:44:50 PM
    Author     : onairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autoservicio Popular</title>
    <link rel="stylesheet" href="./style/buscador.css">
    <link rel="stylesheet" href="./style/topBar.css">
    <link rel="stylesheet" href="./style/fonts.css">
    <link rel="shortcut icon" href="./assets/favicon.ico" type="image/x-icon">
</head>
<body>
    <jsp:include page="./topbar.jsp"/>
    <section id="Container">
        <div id="LeftBar"></div>
        <div id="Contenido">
            <div id="Productos"></div>
            <div id="indice">
                <button class="buttonInd">◀</button>
                <button class="buttonInd">1</button>
                <button class="buttonInd">▶</button>
            </div>
        </div>
    </section>
    <script src="./JavaScript/topBar.js"></script>
    <script src="./JavaScript/buscador.js"></script>
</body>
