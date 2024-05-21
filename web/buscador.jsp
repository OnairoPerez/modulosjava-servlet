<%-- 
    Document   : buscador
    Created on : May 16, 2024, 4:44:50 PM
    Author     : onairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Server.DataObject.SearchData"%>
<%@page import="java.util.Set"%>
<%@page import="Server.DataObject.LocalPrice"%>
<%@page import="java.io.IOException"%>


<%! SearchData prod = new SearchData(); %>
<%! LocalPrice localPrice = new LocalPrice(); %>
<%! 
    SearchData[] data; 
    {
        try{
            data = prod.getData();
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
    <link rel="stylesheet" href="./style/buscador.css">
    <link rel="stylesheet" href="./style/topBar.css">
    <link rel="stylesheet" href="./style/fonts.css">
    <link rel="shortcut icon" href="./assets/favicon.ico" type="image/x-icon">
</head>
<body>
    <jsp:include page="./topbar.jsp"/>
    <section id="Container">
        <div id="LeftBar">
            <div id="Marca" class="Options">
                <h4>Marca</h4>
                <hr>
                <% 
                    Set<String> brandes = prod.getBrandes();
                    for (String brand : brandes) {
                        out.println("<button>" + brand + "</button>");
                    }
                %>
            </div>
            <div id="Ordenar" class="Options">
                <h4>Ordenar</h4>
                <hr>
                <% 
                    String[] order = {"Precio ▲️", "Precio ▼", "Más comprado"};
                    for (String item : order) {
                        out.println("<button>" + item + "</button>");
                    }
                %>
            </div>
            <div class="space"></div>
        </div>
        <div id="Contenido">
            <div id="Productos">
                <%
                    for (SearchData item : data ) {
                        String price = localPrice.colombia(item.precio);
                        
                        out.println("<div class=\"ProdList\">");
                        out.println("<div><img src=" + item.img + "></div>");
                        out.println("<div class=\"TextList\">");
                        out.println("<a href=\"\">" + item.nombre + "</a>");
                        out.println("<p>" + price + "</p>");
                        out.println("</div>");
                        out.println("</div>");
                    }
                %>
            </div>
            <div id="indice">
                <button class="buttonInd">◀</button>
                <button class="buttonInd">1</button>
                <button class="buttonInd">▶</button>
            </div>
        </div>
    </section>
    <script src="./JavaScript/topBar.js"></script>
</body>
<html/>