/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let info = true;
let account = false;

function displayInfo() {
  info = !info;
  const elements = document.querySelectorAll(".info");
  elements.forEach((section) => {
    section.style.display = info ? "flex" : "none"; 
  });
}
function displayAccount() {
  account = !account;
  const elements = document.querySelectorAll(".account");
  elements.forEach((section) => {
    section.style.display = info ? "none" : "flex";
  });
}

let buttons = document.querySelectorAll(".display");
buttons.forEach((button) => {
  button.addEventListener("click", () => {
    displayInfo(); displayAccount();
  });
});

let show = document.querySelector("#eye");
let inputs = document.querySelectorAll(".account input[type='password']");
show.addEventListener("click", () => {
  inputs.forEach((input) => {
    let type = input.type === "password" ? "text" : "password";
    input.type = type;
  });
});

let emailInputs = document.querySelectorAll("#formulario input[type='email']");
emailInputs[0].addEventListener("input", () => {
  let value = emailInputs[0].value;
  emailInputs[1].value = value;
});
