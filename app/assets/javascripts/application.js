// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require mousetrap
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  $("#modal-window").hide();
  $("#modal-window-bg").hide();

  var menu = $('.centered-navigation-menu');
  var menuToggle = $('.centered-navigation-menu-button');
  var signUp = $('.sign-up');

  $(menuToggle).on('click', function(e) {
    e.preventDefault();
    menu.slideToggle(function(){
      if(menu.is(':hidden')) {
        menu.removeAttr('style');
      }
    });
  });

  $(document).delegate('.sign-in-link', 'ajax:success', function(event, data, status, xhr) {
    $("#modal-window-bg").fadeIn();
    $("#modal-window").fadeIn();
    $("#modal-window").html(data);
    $("#login").focus();
  });

  $(document).delegate('.sign-in-close', 'click', function() {
    $("#modal-window-bg").fadeOut();
    $("#modal-window").fadeOut();
  });

  $('.flash').delay(1000).fadeOut();
});