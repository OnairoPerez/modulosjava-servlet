<%-- 
    Document   : carrito
    Created on : May 17, 2024, 12:46:32 PM
    Author     : onairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autoservicio Popular</title>
    <link rel="stylesheet" href="./style/topBar.css">
    <link rel="stylesheet" href="./style/carrito.css">
    <link rel="shortcut icon" href="./assets/favicon.ico" type="image/x-icon">
</head>
<body>
    <main>
        <jsp:include page="./topbar.jsp"/>
        <div id="container" class="flexCenter">
            <div id="table-left" class="flexCenter tables">
                <h2>Productos</h2>
                <div id="table-productos" class="table" >
                    <div class="headers item-list">
                        <h4>Nombre</h4>
                        <h4>Precio/u </h4>
                        <h4>Cantidad</h4>
                    </div>
                </div>
                <button id="agregar">Realizar pedido</button>
            </div>
            <div id="table-right" class="flexCenter tables">
                <h2>Total</h2>
                <div id="table-total" class="table">
                    <div class="headers"></div>
                </div>
                <div class="flexCenter val-total">
                    <span id="valorTotal">$</span>
                    <span>Total</span>
                </div>
            </div>
        </div>
    </main>
    <script src="./JavaScript/topBar.js"></script>
    <script src="./JavaScript/carrito.js"></script>
</body>
</html>
