# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $("#new_member_btn").on "click", ->
    console.log("button clicked!");
    $("#members").append('<div class="row">
            <input type="text" id="tournament_member_1" name="tournament[members][]" placeholder="Введите имя участника"
                   class="mdl-textfield__input form-control">
                   <a class="btn-floating btn-small waves-effect waves-light red" id="remove_member_btn">
              <i class="material-icons">delete</i></a>
          </div>');
  $('select').material_select();

$(document).on "click", "#remove_member_btn", ->
  this.parentNode.remove();




