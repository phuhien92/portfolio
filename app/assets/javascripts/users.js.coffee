# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready( ->
  $('.delete_user').bind('ajax:success', ->
    $(this).closest('tr').fadeOut();
  );
);

# $(document).ready(function() {
  # $('.delete_user').bind('ajax:success', ->
    # $(this).closest('tr').fadeOut();
  # );
# });
