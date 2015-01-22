$(document).on('click', 'nav ul li', function() {
  $('.logo').css("z-index","999");
  $('.menu-links').slideDown(100);
});

$(document).on({
  mouseenter: function(){
    $('.menu-links').css("display","block");
  },
  mouseover: function(){
    $('.menu-links').css("display","block");
  },
  mouseleave: function(){
    $('.logo').css("z-index","4000");
    $('.menu-links').stop().slideUp(100);
  }
}, '.menu-links'); // passing the selector in as an argument to the .on function
