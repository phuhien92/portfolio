# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready( ->
  $submitBtn = $('.dropdown-menu').find('input[type="submit"]');

  $submitBtn.bind('ajax:failure', ->
    $('.login-comments').text('Username/password is invalid !');
  ).bind('ajax:success', ->
    $('.login-comments').text('Login successfull !');
  );
);