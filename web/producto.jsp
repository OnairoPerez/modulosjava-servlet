<%-- 
    Document   : producto
    Created on : May 17, 2024, 1:02:12 PM
    Author     : onairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autoservicio Popular | Calidad y servicio</title>
    <link rel="stylesheet" href="./style/fooder.css">
    <link rel="stylesheet" href="./style/topBar.css">
    <link rel="stylesheet" href="./style/productos.css">
    <link rel="shortcut icon" href="./assets/favicon.ico" type="image/x-icon">
</head>
<body>
    <main>
        <jsp:include page="./topbar.jsp"/>
        <section class="flexCenter">
            <h1>Detalles del produtocto</h1>
            <div id="container" class="flexCenter">
                <img src="https://http2.mlstatic.com/D_NQ_NP_779997-MLA50150460669_052022-O.webp" alt="" id="imgProducto">
                <div class="flexCenter">
                    <h3>Arroz Roa Con Fortiplus 12.5 K Pack </h3>
                    <span>Precio $65.100</span>
                    <p>
                        Detalles <br>
                        Arroz de gran calidad seleccionado de los mejores 
                        arroces con vitaminas y complemento Fortiplus <br>
                        <hr>
                        ● Presentación en bolsas de 500 gramos <br>
                        ● Contenido neto total 12.5 kilos
                    </p>
                    <label for="inputNum">
                        <span>Cantidad</span>
                        <input type="number" name="" id="inputNum">
                    </label>
                    
                    <button>Agregar al carrito</button>
                </div>
            </div>
        </section>
    </main>
    <jsp:include page="./fooder.jsp"/>
    <script src="./JavaScript/topBar.js"></script>
</body>
</html>
