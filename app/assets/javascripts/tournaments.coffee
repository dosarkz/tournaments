# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  i = 1;
  $("#new_member_btn").on "click", ->
    console.log("button clicked!");
    counter = parseInt(this.dataset.counter) + i;
    this.dataset.counter = counter;

    $("#members").append('<div class="row  member_item"><div class="field">
            <label for="tournament_members_attributes_0_name" class="active">Name</label>
            <input type="text" id="tournament_member_1" name="tournament[members_attributes]['+counter+'][name]" placeholder="Введите имя участника"
                   class="mdl-textfield__input form-control">
                   <a class="btn-floating btn-small waves-effect waves-light red" id="remove_member_btn">
              <i class="material-icons">delete</i></a>
          </div></div>');

  $('select').material_select();

  members = []

  $("#sortMembers").on "click", ->
    $(".member_item").each (index, element) =>
      members.push(element)

    members.sort( () -> return .5 - Math.random())
    $("#members").html(members)









$(document).on "click", "#remove_member_btn", ->
  this.parentNode.remove();





