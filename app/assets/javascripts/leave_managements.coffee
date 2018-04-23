# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	if $('.record-datepicker').length > 0
	    $('.record-datepicker').datepicker
	      format: 'yyyy-mm-dd'
	      autoclose: true
	      todayHighlight: true
	    return