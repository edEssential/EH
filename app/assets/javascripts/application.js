//= require jquery
//= require_tree .
//= require jquery-1.7.2.min
//= require plugins
//= require options
//= require custom

$(document).ready(function () {
	$('.page').hide();	
	$('.page').delay(800).fadeIn(600);
	$('#myHead').hide();	
	$('#myHead').delay(400).fadeIn(400);
	$('#show_date').datepicker( {
		dateFormat : "dd MM yy"
	});
});


$('.releaseTitleText').hide().removeClass('releaseTitleText').addClass('releaseTitleText-js');

$('.thumb').hover(function(){
    $(this).find('.text-js').fadeToggle();
});

$(function() {
    $( "#tabs" ).tabs();
});