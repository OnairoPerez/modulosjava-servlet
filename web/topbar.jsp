<%-- 
    Document   : topbar
    Created on : May 16, 2024, 3:57:25 PM
    Author     : onairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav id="TopBar">
    <div id="right" class="TopBarElements">
        <img data-link="home" id="logo" src="./assets/image/logo.webp" alt="Logo de la empresa Autoservicio Popular">
    </div>
    <div id="center" class="TopBarElements">
        <input id="SearchInput" type="text" placeholder="Buscar Producto">
        <button data-link="buscador" id="SearchButton">
            <img id="SearchImg" src="./assets/icons/lupa.webp" alt="Lupa color negro">
        </button>
    </div>
    <div id="left" class="TopBarElements">
        <img data-link="carrito" src="./assets/icons/carrito.webp" class="leftImg" alt="Icono carrito de compras">
        <img data-link="login" src="./assets/icons/user.webp" class="leftImg" alt="Icono de usuario">
    </div>
</nav>

