let category_action_buttons = document.querySelectorAll(".category-title");

// TODO improve interaction with actions
category_action_buttons.forEach(category_directory => {
  let category_id = category_directory.dataset.id;
  let root_category = category_directory.parentElement;

  let btn_action = root_category.querySelector(".category-action");
  let category_collapsable = root_category.parentElement.querySelector(`#collapsable-${category_id}`)

  category_directory.addEventListener("click", function(event) {
    btn_action.classList.toggle("d-none");
    category_collapsable.classList.toggle("d-none");
  })
});
