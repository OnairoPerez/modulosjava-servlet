//Elementos
const imgCarrito = document.querySelector("img.leftImg:nth-child(1)")
const imgUser = document.querySelector("img.leftImg:nth-child(2)")
const imgLogo = document.querySelector("#logo")
const buttonSearch = document.querySelector("#SearchButton")

//Arreglos
const topElement = [imgCarrito, imgUser, imgLogo, buttonSearch]

//Lógica

topElement.forEach(element => {
    element.addEventListener("click", () => {
        let url = element.dataset.link
        window.location.href = `/WebServer/${url}`
    })
});
