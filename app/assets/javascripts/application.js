//= require jquery
//= require_tree .
//= require jquery-1.7.2.min
//= require plugins
//= require options
//= require custom

$(document).ready(function () {
	$('.header').hide();
	$('.header').delay(200).fadeIn(400);
	$('.rulers').hide();
	$('.rulers').delay(200).fadeIn(400);
	$('.releaseHeader').hide();	
	$('.releaseHeader').delay(600).fadeIn(400);
	$('.releaseContent').hide();	
	$('.releaseContent').delay(600).fadeIn(400);
	$('.homepageHeader').hide();	
	$('.homepageHeader').delay(600).fadeIn(400);
	$('.homepageContent').hide();	
	$('.homepageContent').delay(1600).fadeIn(800);
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