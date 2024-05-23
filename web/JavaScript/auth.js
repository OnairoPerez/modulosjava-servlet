function auth(data) {
    const url = "http://localhost:8080/WebServer/login";
    
    fetch(url, {
        method: "POST",
        headers: {
            "Content-Type": "application/x-www-form-urlencoded"
        },
        body: data
    })
        .then(res => res.json())
        .then(data => { 
            if (data.verify) {
                window.location.href = "/WebServer/home";
            } else {
                console.log("Usuario o contraseña incorrecto")
            }
        })
        .catch(() => {
            console.log("Ha ocurrido un error");
        });
}

const form = document.querySelector("#container");
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
    auth(encodedData);  
});



