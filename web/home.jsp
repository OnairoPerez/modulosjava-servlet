<%-- 
    Document   : home
    Created on : May 16, 2024, 4:32:55 PM
    Author     : onairo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                <article>
                    <div style="background-image: linear-gradient(0deg, rgba(0,0,0,0.8) 30%, rgba(0,0,0,0) 100%), url('assets/category/spices.webp');"></div>
                    <p>Condimentos y especias</p>
                </article>
                <article>
                    <div style="background-image: linear-gradient(0deg, rgba(0,0,0,0.8) 30%, rgba(0,0,0,0) 100%), url('assets/category/sausage.webp') ;"></div>
                    <p>Embutidos</p>
                </article>
                <article>
                    <div style="background-image: linear-gradient(0deg, rgba(0,0,0,0.8) 30%, rgba(0,0,0,0) 100%), url('assets/category/drinks.webp');"></div>
                    <p>Bebidas</p>
                </article>
                <article>
                    <div style="background-image: linear-gradient(0deg, rgba(0,0,0,0.8) 30%, rgba(0,0,0,0) 100%), url('assets/category/soap.webp');"></div>
                    <p>Higiene personal</p>
                </article>
                <article>
                    <div style="background-image: linear-gradient(0deg, rgba(0,0,0,0.8) 30%, rgba(0,0,0,0) 100%), url('assets/category/knives.webp');"></div>
                    <p>Elementos de cocina</p>
                </article>
                <article>
                    <div style="background-image: linear-gradient(0deg, rgba(0,0,0,0.8) 30%, rgba(0,0,0,0) 100%), url('assets/category/pencils.webp');"></div>
                    <p>Papelería</p>
                </article>
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
                <article>
                    <img src="https://http2.mlstatic.com/D_NQ_NP_760373-MLU73176478205_112023-O.webp" alt="">
                    <p>Café Sello Rojo 425 Gr</p>
                    <button> Carrito </button>
                </article>
                <article>
                    <img src="https://http2.mlstatic.com/D_NQ_NP_735519-MCO45196786941_032021-O.webp" alt="">
                    <p>Arroz Diana Arroba 25 libras</p>
                    <button> Carrito </button>
                </article>
                <article>
                    <img src="https://http2.mlstatic.com/D_NQ_NP_682348-MCO73906928771_012024-O.webp" alt="">
                    <p>Lomo Atun Zenu En Agua X 160 Gr</p>
                    <button> Carrito </button>
                </article>
                <article>
                    <img src="https://http2.mlstatic.com/D_NQ_NP_806577-MCO41630168011_052020-O.webp" alt="">
                    <p>Gomitas Trululu Aros Bolsa X 100 Und</p>
                    <button> Carrito </button>
                </article>
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
