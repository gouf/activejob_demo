# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

doPoll = ->
  $.ajax(url: '/partial').done (html) ->
    $("#guest_list").html(html)
    setTimeout(doPoll, 10 * 1000)
doPoll()
