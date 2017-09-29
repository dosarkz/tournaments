# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  i = 1;
  $("#new_member_btn").on "click", ->
    console.log("button clicked!");
    counter = parseInt(this.dataset.counter) + i;
    this.dataset.counter = counter;
    console.log(this.dataset.counter);

    $("#members").append('<div class="row">
            <input type="text" id="tournament_member_1" name="tournament[members_attributes]['+counter+'][name]" placeholder="Введите имя участника"
                   class="mdl-textfield__input form-control">
                   <a class="btn-floating btn-small waves-effect waves-light red" id="remove_member_btn">
              <i class="material-icons">delete</i></a>
          </div>');
  $('select').material_select();

$(document).on "click", "#remove_member_btn", ->
  this.parentNode.remove();




