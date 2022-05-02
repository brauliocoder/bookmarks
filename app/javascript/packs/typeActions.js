document.addEventListener("ajax:success",function(){
  let bookmarks_form = document.querySelector("#bookmark-form");
  if (bookmarks_form) {
    let dropdown_list = bookmarks_form.querySelector("#group-dropdown-list");
    let edit_option = dropdown_list.querySelector("#edit-group-select");
    let remove_option = dropdown_list.querySelector("#remove-group-select");
    
    let dropdown_button = bookmarks_form.querySelector("#group-dropdown-button");
    let group_select = bookmarks_form.querySelector("#bookmark_group_id");
    group_select.addEventListener("change", function(){
      let select_value = group_select.value;
      if (select_value) {
        dropdown_button.classList.remove("disabled")

        edit_option.href = `/groups/${select_value}/edit`;
        remove_option.href = `/groups/${select_value}`;
      } else {
        dropdown_button.classList.add("disabled")
      }
    })
  }
})