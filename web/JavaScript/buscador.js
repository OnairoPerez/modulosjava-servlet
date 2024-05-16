// Variables
const divProductos = document.querySelector("#Productos");
const divIndice = document.querySelector("#indice");
const lupa = document.querySelector("#SearchButton"); 
const divLeftBar = document.querySelector("#LeftBar");

let marcas = ["Flor Huila", "Diana", "Roa", "Comino", "Caballito", "Doña Isabel", "Tolima"];
let ordenar = ["Precio ▲️", "Precio ▼", "Más comprado"];
let productos = [
  {
    'nombre': 'Arroz Diana Blanco Vitamor x 1 Kilogramo',
    'precio': 4800,
    'img': 'https://http2.mlstatic.com/D_NQ_NP_827662-MCO52592339598_112022-O.webp',
    'categoria':'grano',
    'marca':'diana'
  },
  {
    'nombre': 'Arroz Diana Blanco Vitamor x 25 Libras',
    'precio': 59000,
    'img': 'https://http2.mlstatic.com/D_NQ_NP_650438-MCO43103671929_082020-O.webp',
    'categoria':'grano',
    'marca':'diana'
  },
  {
    'nombre': 'Arroz Diana Blanco Vitamor x 30 Kilos',
    'precio': 153100,
    'img': 'https://http2.mlstatic.com/D_NQ_NP_844337-MCO47612726650_092021-O.webp',
    'categoria':'grano',
    'marca':'diana'
  },
  {
    'nombre': 'Flor Huila Arroz Blanco Con Vitaminas x 1 Kilogramo',
    'precio': 6600,
    'img': 'https://http2.mlstatic.com/D_NQ_NP_842522-MCO68924089972_042023-O.webp',
    'categoria':'grano',
    'marca':'flor huila'
  },
  {
    'nombre': 'Arroz Florhuila X 10 Kilogramos',
    'precio': 50000,
    'img': 'https://http2.mlstatic.com/D_NQ_NP_730135-MCO45374244479_032021-O.webp',
    'categoria':'grano',
    'marca':'flor huila'
  },
  {
    'nombre': 'Arroz Roa Blanco Fortiplus X 1 Kilogramo',
    'precio': 6800,
    'img': 'https://http2.mlstatic.com/D_NQ_NP_914644-MCO68924089968_042023-O.webp',
    'categoria':'grano',
    'marca':'roa'
  },
  {
    'nombre': 'Arroz Roa x 25 Libras',
    'precio': 65000,
    'img': 'https://http2.mlstatic.com/D_NQ_NP_779997-MLA50150460669_052022-O.webp',
    'categoria':'grano',
    'marca':'roa'
  },
  {
    'nombre': 'Arroz Roa Premium x 1 Kilogramo',
    'precio': 6500,
    'img': 'https://http2.mlstatic.com/D_NQ_NP_908021-MCO54794410205_042023-O.webp',
    'categoria':'grano',
    'marca':'roa'
  },
  {
    'nombre': 'Arroz Roa Premium x 500 Gramos',
    'precio': 3400,
    'img': 'https://http2.mlstatic.com/D_NQ_NP_795855-MCO54798408160_042023-O.webp',
    'categoria':'grano',
    'marca':'roa'
  }
]

//Eventos
window.addEventListener("load", () => {
  tag();
  buscar();
})
// lupa.addEventListener("click", buscar)

//Funciones
function buscar() {
  let Num = new Intl.NumberFormat("es-CO")
  productos.forEach(producto => {
    let prod = document.createElement("div");
    let divText = document.createElement("div")
    let img = document.createElement("img");
    let p = document.createElement("p");
    let a = document.createElement("a");
    let div = document.createElement("div")
    
    prod.className = "ProdList";
    divText.className = "TextList";
    img.src = producto.img;
    p.innerHTML = "$ " + Num.format(producto.precio);
    a.innerHTML = producto.nombre;
    a.href = "";

    divText.appendChild(a);
    divText.appendChild(p);  
    div.appendChild(img);
    prod.appendChild(div);
    prod.appendChild(divText);
    divProductos.appendChild(prod);
  });
}
function tag() {
  let divMarca = divTag("Marca")
  marcas.forEach(marca => {
    let button = document.createElement("button");
    button.innerHTML = marca
    divMarca.appendChild(button)
  });

  let divOrden = divTag("Ordenar")
  ordenar.forEach(opciones => {
    let button = document.createElement("button")
    button.innerHTML = opciones
    divOrden.appendChild(button)
  });

  let space = document.createElement("div")
  space.className = "space"
  divLeftBar.appendChild(space)

}
function divTag(id) {
  let div = document.createElement("div")
  let h4 = document.createElement("h4")
  let hr = document.createElement("hr")

  h4.innerHTML = id
  div.id = id
  div.className = "Options"

  div.appendChild(h4)
  div.appendChild(hr)
  divLeftBar.appendChild(div)

  return div
}