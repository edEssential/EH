//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(document).ready(function () {
	$('.videos').hide();	
	$('.videos').delay(300).fadeIn(1000);
	$('.formFade').hide();	
	$('.formFade').delay(150).fadeIn(700);
	$('.shows').hide();	
	$('.shows').delay(200).fadeIn(500);
	$('.releases').hide();	
	$('.releases').delay(200).fadeIn(500);
	$('.releasesDetail').hide();	
	$('.releasesDetail').delay(200).fadeIn(500);
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