//= require jquery
//= require jquery_ujs
//= require foundation.min
//= require index
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
});


$('.releaseTitleText').hide().removeClass('releaseTitleText').addClass('releaseTitleText-js');

$('.thumb').hover(function(){
    $(this).find('.text-js').fadeToggle();
});

$(function() {
    $( "#tabs" ).tabs();
});

$(window).load(function() {               $('#status').fadeOut('slow');               $('#preloader').delay(350).fadeOut('slow');
  });	
  $(document).foundation();
  $(document).ready(function () {
      // Handler for .ready() called.
      $('#arrow-container').click(function () {
          $('html, body').animate({
              scrollTop: $('.index-wrapper').offset().top
          }, 800);
      });
  });
  $(document).ready(function() {
  	$(".topLink").click(function() {
  		$("html, body").animate({
  			scrollTop: 0	
  		}, {
  			duration: 800,
  			easing: "swing"
  		});
  		return false;
  	});

  });
  $(document).ready(function() {

  	$("a").each(function () {
  	    if (this.hostname != document.location.hostname) this.target = "_blank";
  	});

  });
  $(document).ready(function() {

      var anchor = document.querySelectorAll('#button-wrapper button');
 
      [].forEach.call(anchor, function(anchor){
        var open = false;
        anchor.onclick = function(event){
          event.preventDefault();
          if(!open){
            $('#splash button').addClass('button-fixed');
            this.classList.add('close');
            open = true;
            $('.menu').addClass('openmenu');
            $('html, body').addClass('fix-body');
            $('body').bind('touchmove', function(e){e.preventDefault()})
          }
          else{
            $('#splash button').removeClass('button-fixed');
            this.classList.remove('close');
            open = false;
            $('.menu').removeClass('openmenu');
            $('html, body').removeClass('fix-body');
            $('body').unbind('touchmove')
          }
        }
      }); 
    });
    $(document).ready(function(){
      // Target your .container, .wrapper, .post, etc.
      $("#adismalaffair").fitVids();
    });