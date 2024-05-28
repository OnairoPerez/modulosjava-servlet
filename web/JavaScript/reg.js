/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function reg(data) {
    const url = "http://localhost:8080/WebServer/registro";
    
    fetch(url, {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        body: data
    })
        .then(res => res.json())
        .then(data => { 
            if (data.registered) {
                window.location.href = "/WebServer/login";
            } else {
                console.log("Ha ocurrido un error con el regitro");
            }
        })
        .catch(() => {
            console.log("Ha ocurrido un error de conexión");
        });
}
function ckeckPassword() {
    return inputs[0].value === inputs[1].value ? true : false;
}

let form = document.querySelector("#formulario");
form.addEventListener('keydown', function(event) {
  if (event.key === 'Enter') {
    event.preventDefault();
  }
});
form.addEventListener('submit', function (event) {
  event.preventDefault();
  let dataForm = new FormData(form);
  let formBody = [];
  for (const [key, value] of dataForm.entries()) {
      const encodedKey = encodeURIComponent(key);
      const encodedValue = encodeURIComponent(value);
      formBody.push(`${encodedKey}=${encodedValue}`);
  }

  let encodedData = formBody.join('&');
  
  if (ckeckPassword()) {
      reg(encodedData);
  } else {
      console.log("La confirmacación de la contraseña es incorrecta");
  }
});

