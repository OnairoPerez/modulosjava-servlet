const body = document.querySelector("body");
const prodList = document.querySelector("#table-productos");
const totalList = document.querySelector("#table-total");
const totalValor = document.querySelector("#valorTotal")
const productos = [
  {
    'nombre': 'Arroz Diana Blanco Vitamor x 1 Kilogramo',
    'precio': 4800,
    'cantidad': 4
  },
  {
    'nombre': 'Arroz Diana Blanco Vitamor x 25 Libras',
    'precio': 59000,
    'cantidad': 1
  },
  {
    'nombre': 'Arroz Diana Blanco Vitamor x 30 Kilos',
    'precio': 153100,
    'cantidad': 1
  },
  {
    'nombre': 'Flor Huila Arroz Blanco Con Vitaminas x 1 Kilogramo',
    'precio': 6600,
    'cantidad': 10
  },
  {
    'nombre': 'Arroz Florhuila X 10 Kilogramos',
    'precio': 50000,
    'cantidad': 1
  },
  {
    'nombre': 'Arroz Roa Blanco Fortiplus X 1 Kilogramo',
    'precio': 6800,
    'cantidad': 4
  },
  {
    'nombre': 'Arroz Roa x 25 Libras',
    'precio': 65000,
    'cantidad': 1
  },
  {
    'nombre': 'Arroz Roa Premium x 1 Kilogramo',
    'precio': 6500,
    'cantidad': 5
  },
  {
    'nombre': 'Arroz Roa Premium x 500 Gramos',
    'precio': 3400,
    'cantidad': 5
  }
]

let valorCompra = 0;
productos.forEach((element) => {
  let item = document.createElement("div");
  let nombre = document.createElement("span"); 
  let precio = document.createElement("span"); 
  let cantidad = document.createElement("span");
  
  let div = document.createElement("div"); 
  let total = document.createElement("span");

  item.className = "item-list"
  div.className = "val-cant"

  let precioCantidad = element.precio * element.cantidad
  valorCompra += precioCantidad

  nombre.innerHTML = element.nombre;
  precio.innerHTML = element.precio;
  cantidad.innerHTML = element.cantidad;
  total.innerHTML = `$${precioCantidad}`
  totalValor.innerHTML = `$${valorCompra}`

  item.appendChild(nombre)
  item.appendChild(precio)
  item.appendChild(cantidad)

  div.appendChild(total)

  prodList.appendChild(item)
  totalList.appendChild(div)
})