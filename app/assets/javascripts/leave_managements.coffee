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

$(document).on 'change', '#to', ->
	to_date = $(this).val()
	from_date = $('#from').val()
	$.ajax '/leave_managements/applied_leave',
		type:'GET'
		data:{
			to_date: to_date,
			from_date: from_date
		}
		success:(data) ->
			$('#leave_calculated').html data


	