$( document ).ready(function() {
    
	//Owl Carousel
	$('.owl-carousel').owlCarousel({
	  loop:true,
	  margin:10,
	  nav:true,
	  responsive:{
	      0:{
	          items:1
	      },
	      600:{
	          items:3
	      },
	      1000:{
	          items:4
	      }
	  }
	});

//bxSlider
$('.bxSlider').bxSlider({
	mode: 'horizontal',
  responsive: true,
  video:true,
  pager: true,
  moveSlides: 1,
  slideMargin: 40,
  infiniteLoop: true,
  slideWidth: 660,
  minSlides: 3,
  maxSlides: 3,
  speed: 800,
});

//Slider Pro
  $( '#slider_pro' ).sliderPro({
  	width: 1140,
    height: 400,
    fullScreen: true,
    arrows: true,
    buttons: false,
    waitForLayers: true,
    thumbnailWidth: 200,
    thumbnailHeight: 100,
    thumbnailPointer: true,
    autoplay: true,
    autoScaleLayers: false,
    breakpoints: {
      1000:{
        height: 450
      },
      800:{
        height: 500
      },
      500: {
        height: 600
      }
    }
  });

  //Least
  $('.least-gallery').least();
});