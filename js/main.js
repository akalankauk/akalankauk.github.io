//Strict Mode 
(function($) {
  "use strict";

//Run on Document Ready
$(document).ready(function(){  

  //Smooth scrool
  $("html").niceScroll({styler:"fb",cursorcolor:"#000"});

  //Side menu - Open
  $('.side-menu-open').mouseenter(function(){
    $('.side-menu').animate({'left': '0px'}, 600, 'easeOutCubic');
  });

  //Side menu - Close
  $('#side-menu-close').click(function(){
    var sideWidth = $('.side-menu').outerWidth();
    var sideWidthClose = '-' + sideWidth + 'px';
    $('.side-menu').animate({'left': sideWidthClose}, 600, 'easeOutCubic');
    preventDefault();
  });

  //Smooth Scroll on anchor links
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 700, 'easeInOutExpo');
        return false;
      }
    }
  });

  //Bootstrap Scroll Spy
  $('[data-spy="scroll"]').each(function () {
    var $spy = $(this).scrollspy('refresh');
  });  

  //Bxslider -see options at http://bxslider.com/
  $('.portfolio-itens').bxSlider({
      slideWidth: 200,
      minSlides: 1,
      maxSlides: 4,
      moveSlides: 1,
      slideMargin: 5,
      auto: false,
      mode: 'horizontal',
      useCSS: false,
      speed: 900,
      infiniteLoop: false,
      hideControlOnEnd: true,
      easing: 'easeOutElastic',
      pager: false,
      prevText: '<i class="fa fa-chevron-left"></i>',
      nextText: '<i class="fa fa-chevron-right"></i>'
  });

  
  //Nivo Lightbox
  $('a.nivobox').nivoLightbox({ effect: 'fade' });

  //Portfolio Animations
  $('.portfolio-item').hover(function(){
    $(this).find('.hover-bg-wrapper').fadeIn(200);
    $(this).find('.hover').show();  
    $(this).find('p').addClass('animated').addClass('fadeInUp');
  }, function(){
    $(this).find('.hover-bg-wrapper').fadeOut(200);
    $(this).find('.hover').fadeOut(200);
    $(this).find('p').removeClass('fadeInUp');
  });

  //Contact Form Validator and Ajax Sender
  $("#contactForm").validate({
    submitHandler: function(form) {
      $.ajax({
        type: "POST",
        url: "php/contact-form.php",
        data: {
          "name": $("#contactForm #name").val(),
          "email": $("#contactForm #email").val(),
          "subject": $("#contactForm #subject").val(),
          "message": $("#contactForm #message").val()
        },
        dataType: "json",
        success: function (data) {
          if (data.response == "success") {
            $("#contactSuccess").fadeIn(300);
            $("#contactError").addClass("hidden");

            $("#contactForm #name, #contactForm #email, #contactForm #subject, #contactForm #message")
              .val("")
              .blur()
              .closest(".control-group")
              .removeClass("success")
              .removeClass("error");              
            
          } else {
            $("#contactError").fadeIn(300);
            $("#contactSuccess").addClass("hidden");
          }
        }

      });
    }
  });

  //Modal for Contact Form
  $('.modal-wrap').click(function(){
    $('.modal-wrap').fadeOut(300);
  });      

  //Background Height fix for vertical progress
  $( ".full-height" ).each(function() {
    var $stretch = $(this);
    $stretch.css({ height: $stretch.closest('.line').find('.content-wrap').height() });
  }); 

});

//Run on Window Load
$(window).load(function(){
  //Page loader
  $('#page-loader').fadeOut(200, function(){});

  //Safari Crossbrowser animation Fix
  if ($('html').hasClass('safari')) {
      $('#content-body').removeClass('animated');
  }

  //Fade In load
  $('#content-body').addClass('fadeInUp');

  //Background Height fix for vertical progress
  setTimeout(function () {    
      $( ".full-height" ).each(function() {
        var $stretch = $(this);
        $stretch.css({ height: $stretch.closest('.line').find('.content-wrap').outerHeight() });
      });  
    }, 300
  );
  
  //Background Height fix for vertical progress on window resize
  $(window).resize(function(){ 
     $( ".full-height" ).each(function() {
      var $stretch = $(this);
      $stretch.css({ height: $stretch.closest('.line').find('.content-wrap').outerHeight() });
    }); 
  });
});
})(jQuery);