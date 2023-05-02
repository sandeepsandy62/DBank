import {DBank} from "../../declarations/DBank";

window.addEventListener("load",async function(){
  const currentAmount = await DBank.checkBalance();
  console.log(currentAmount);
  this.document.getElementById("value").innerText = Math.round(currentAmount*100)/100;
});

document.querySelector("form").addEventListener("submit",async function(event){
  event.preventDefault();


  const button = event.target.querySelector("#submit-btn");

  button.setAttribute("disabled",true);

  const inputAmount = parseFloat(document.getElementById("input-amount").value);
  const outputAmount = parseFloat(document.getElementById("withdrawal-amount").value);

  if (document.getElementById("input-amount").value.length != 0){
    await DBank.topUp(inputAmount);
  }

  const currentAmount = await DBank.checkBalance();
  document.getElementById("value").innerText = Math.round(currentAmount*100)/100;

  document.getElementById("input-amount").value = "";
  button.removeAttribute("disabled");
})