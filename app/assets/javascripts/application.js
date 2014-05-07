//= require modernizr
//= require jquery
//= require jquery_ujs
//= require foundation.min
//= require jquery.fitvids
//= require bootstrap

$(document).ready(function () {
	$('.page').hide();	
	$('.page').delay(800).fadeIn(600);
	$('#myHead').hide();	
	$('#myHead').delay(400).fadeIn(400);
	$('#show_date').datepicker( {
		dateFormat : "dd MM yy"
	});
	$('.slides').cycle({
		fx: 'fade',
		timeout:  8000,
		speed:  1500 
	});
});


$('.releaseTitleText').hide().removeClass('releaseTitleText').addClass('releaseTitleText-js');

$('.thumb').hover(function(){
    $(this).find('.text-js').fadeToggle();
});

$(function() {
    $( "#tabs" ).tabs();
});