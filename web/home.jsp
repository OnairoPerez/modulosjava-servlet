<%-- 
    Document   : home
    Created on : May 16, 2024, 4:32:55 PM
    Author     : onairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Server.DataObject.CategoryData"%>
<%@page import="Server.DataObject.SearchData"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.io.IOException"%>

<%! CategoryData ctg = new CategoryData(); %>
<%! 
    CategoryData[] data;
    {
        try{
            data = ctg.getData();
        } catch(IOException e) {
            System.out.println("Error" + e);
        }
    }
%>

<%! SearchData prod = new SearchData(); %>
<%! 
    SearchData[] prodList;
    {
        try{
            prodList = prod.getData();
        } catch(IOException e) {
            System.out.println("Error" + e);
        }
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autoservicio Popular</title>
    <link rel="stylesheet" href="./style/topBar.css">
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/fonts.css">
    <link rel="stylesheet" href="./style/fooder.css">
    <link rel="shortcut icon" href="./assets/favicon.ico" type="image/x-icon">
</head>
<body>
    <main>
        <jsp:include page="./topbar.jsp"/>
        <section id="slogan">    
            <div>
                <h1>
                    Autoservicio Popular
                </h1>
                <p>
                    Descubre los mejores productos para tu hogar al mejor precio, con la calidad, variedad y servicio que solo nosotros te podemos ofrecer. 
                </p>
            </div>
            <img src="./assets/image/banner.webp" alt="Estanterías enfoque central">
        </section>
        <section id="categorias">
            <h2>Categorias</h2>
            <div>
                <%
                    for (CategoryData item : data) {
                        out.println("<article class=\"ctg\">");
                        out.println("<div style=\"background-image: linear-gradient(0deg, rgba(0,0,0,0.8) 30%, rgba(0,0,0,0) 100%), url(" + item.img+ ");\"></div>");
                        out.println("<p>" + item.name + "</p>");
                        out.println("</article>");
                    }
                %>
            </div>
        </section>
        <section id="productos">
            <div>
                <h2>Productos</h2>
                <p style="text-align: center;">
                    No te puedes perder nuestra <br> selección de los productos más <br> 
                    comprados por nuestros clientes, <br> que incluye desde alimentos <br>
                    y bebidas hasta artículos de <br> limpieza e higiene. Todos ellos <br>
                    de la mejor calidad y con la <br> garantía de nuestra tienda
                </p>
            </div>
            <div>
                <%
                    Arrays.sort(prodList, Comparator.comparingInt(SearchData::getPurchased).reversed());
                    SearchData[] top = Arrays.copyOf(prodList, 5);
                    for (SearchData item : top) {
                        out.println("<article>");
                        out.println("<img src="+ item.img + " alt=\"" + item.nombre + "\">");
                        out.println("<p>"+ item.nombre +"</p>");
                        out.println("<button> Carrito </button>");
                        out.println("</article>");
                    }
                %>
            </div>
        </section>
        <section id="cta">
            <img src="./assets/image/moneda.webp" alt="Icono de moneda">
            <div>
                <h2>Puntos fidelidad</h2>
                <p>
                    Aprovecha nuestro sistema de puntos y canjea los 
                    mejores productos por tu fidelidad. Regístrate 
                    y empieza a acumular puntos con cada compra que 
                    hagas.
                </p>
            </div>
        </section>
        <section id="reseñas"></section>
        <section id="preguntas"></section>
    </main>
    <jsp:include page="./fooder.jsp"/>
    <script src="./JavaScript/topBar.js"></script>
</body>
</html>
