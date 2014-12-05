# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#http://stackoverflow.com/questions/13276340/can-i-use-ordinary-javascript-in-coffeescript-file
# using backticks for JS code
`
$(function() {
  var user = $("#users th a, #users .pagination a");
  
  if(user && user != undefined && user.length > 0 ){
        user.live("click", function() {
        $.getScript(this.href);
        return false;
      });
    }
  $("#users_search input").keyup(function() {
    $.get($("#users_search").attr("action"), $("#users_search").serialize(), null, "script");
    return false;
  });
});

`