// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


// **********************************************
// Galeria

 $(document).ready(function(){
           $('li img').on('click',function(){
                var src = $(this).attr('src');
                var img = '<img src="' + src + '" class="img-responsive"/>';
                $('#myModal').modal();
                $('#myModal').on('shown.bs.modal', function(){
                    $('#myModal .modal-body').html(img);
                });
                $('#myModal').on('hidden.bs.modal', function(){
                    $('#myModal .modal-body').html('');
                });
           });  
        });

 // *********************************************
 // Carousel

$(document).ready(function(){
  $('.vereadorCarousel').bxSlider({
    controls: true,
    auto: true,
    pause: 1,
    speed: 1000,
    slideWidth: 100,
    minSlides: 2,
    maxSlides: 5,
    moveSlides: 1,
    slideMargin: 5
  });

  });

$(document).ready(function(){
function initialize() {
    var mapCanvas = document.getElementById('map-canvas');
    var mapOptions = {
      center: new google.maps.LatLng(-22.2449897, -43.7132976),
      zoom: 16,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    var map = new google.maps.Map(mapCanvas, mapOptions)
  }
google.maps.event.addDomListener(window, 'load', initialize);
});

//*************************************************
// SunMenu

$(function(){

  $('#slide-submenu').on('click',function() {             
        $(this).closest('.list-group').fadeOut('slide',function(){
          $('.mini-submenu').fadeIn();  
        });
        
      });

  $('.mini-submenu').on('click',function(){   
        $(this).next('.list-group').toggle('slide');
        $('.mini-submenu').hide();
  })
})
