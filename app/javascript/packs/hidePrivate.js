let private_switch = document.querySelector("#public-private-switch");

private_switch.addEventListener("change",function(){
  var hidden_categories = document.querySelectorAll(".category-folder[data-ispublic='false']");
  hidden_categories.forEach(category => {
    if (private_switch.checked) {
      category.classList.remove("d-none")
    } else {
      category.classList.add("d-none")
    }
  });
})
