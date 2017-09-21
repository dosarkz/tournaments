# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $("#member_add_btn").on "click", ->
    console.log("button clicked!");
    $("#tournament_member_block").append(' <div class="mdl-textfield mdl-js-textfield" id="tournament_member_block">
            <input type="text" id="tournament_member" name="tournament[member][]" placeholder="Введите имя участника"
                   class="mdl-textfield__input form-control">
            <label for="member" class="mdl-textfield__label">Участники</label>
          </div>');



