// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function(){
  $(".carousel-inner > .item:first").addClass("active")
 }); 


//$(window).load(function() {          
//  var i =0;
//  var images = ['vista_cidade2.jpg','vista_cidade3.jpg','vista_cidade.jpg'];
//  var image = $('#header-slide');
                //Initial Background image setup
//  image.css('backgroundImage', 'url(vista_cidade.jpg) no-repeat');
                //Change image at regular intervals
//  setInterval(function(){  
//   image.fadeOut(1000, function () {
//   image.css('backgroundImage', 'url(' + images [i++] +') no-repeat');
//   image.fadeIn(1000);
//   });
//   if(i == images.length)
//    i = 0;
//  }, 5000);           
// });

//$(window).load(function() 
//{
//    var bgCounter = 0,
//        backgrounds = [
//           "vista_cidade.jpg",
//           "vista_cidade2.jpg",
//           "vista_cidade3.jpg"
//        ];
//    function changeBackground()
//    {
//        bgCounter = (bgCounter+1) % backgrounds.length;
//        $('#header-slide').css('background', 'url('+backgrounds[bgCounter]+') no-repeat');
//        setTimeout(changeBackground, 10000);
//
//    }
//    changeBackground();           
// });

//$(document).ready(function(){
 
// var imgArr = new Array( // relative paths of images
// 'vista_cidade.jpg',
// 'vista_cidade2.jpg',
// 'vista_cidade3.jpg'
// );
 
// var preloadArr = new Array();
// var i;
 
 /* preload images */
// for(i=0; i < imgArr.length; i++){
// preloadArr[i] = new Image();
// preloadArr[i].src = imgArr[i];
// }
 
// var currImg = 1;
// var intID = setInterval(changeImg, 6000);
 
 /* image rotator */
// function changeImg(){
// $('#header-slide').animate({opacity: 0}, 1000, function(){
// $(this).css('background','url(' + preloadArr[currImg++%preloadArr.length].src +') top center no-repeat');
// }).animate({opacity: 1}, 1000);
// }
 
// });
