# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
 
$(document).on "click", "#weightliftingButton", (e)->
  $('#weightlifting').toggle()
  $('#weightliftingButton').toggleClass('glyphicon glyphicon-minus')
  #$('#workout_strength').val('')
  
$(document).on "click", "#strengthButton", (e)->
  $('#strength').toggle()
  $('#strengthButton').toggleClass('glyphicon glyphicon-minus')
  #$('#workout_strength').val('')
  
$(document).on "click", "#gymnasticsButton", (e)->
  $('#gymnastics').toggle()
  $('#gymnasticsButton').toggleClass('glyphicon glyphicon-minus')
  #$('#workout_gymnastics').val('')
  
$(document).on "click", "#wodButton", (e)->
  $('#wod').toggle()
  $('#wodButton').toggleClass('glyphicon glyphicon-minus')
  #$('#workout_wod').val('')
  
$(document).on "click", "#mobilityButton", (e)->
  $('#mobility').toggle()
  $('#mobilityButton').toggleClass('glyphicon glyphicon-minus')
  #$('#workout_mobility').val('')
  
$(document).on "click", "#otherButton", (e)->
  $('#other').toggle()
  $('#otherButton').toggleClass('glyphicon glyphicon-minus')
  #$('#workout_other').val('')
  
  