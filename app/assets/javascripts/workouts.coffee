# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
 
$(document).on "click", "#weightliftingButton", (e)->
  $('#weightlifting').toggle()
  $("#weightliftingGlyphicon").toggleClass('glyphicon glyphicon-minus')
  
$(document).on "click", "#strengthButton", (e)->
  $('#strength').toggle()
  $('#strengthGlyphicon').toggleClass('glyphicon glyphicon-minus')
  #$('#workout_strength').val('')
  
$(document).on "click", "#gymnasticsButton", (e)->
  $('#gymnastics').toggle()
  $('#gymnasticsGlyphicon').toggleClass('glyphicon glyphicon-minus')
  #$('#workout_gymnastics').val('')
  
$(document).on "click", "#wodButton", (e)->
  $('#wod').toggle()
  $('#wodGlyphicon').toggleClass('glyphicon glyphicon-minus')
  #$('#workout_wod').val('')
  
$(document).on "click", "#mobilityButton", (e)->
  $('#mobility').toggle()
  $('#mobilityGlyphicon').toggleClass('glyphicon glyphicon-minus')
  #$('#workout_mobility').val('')
  
$(document).on "click", "#otherButton", (e)->
  $('#other').toggle()
  $('#otherGlyphicon').toggleClass('glyphicon glyphicon-minus')
  #$('#workout_other').val('')
  
  