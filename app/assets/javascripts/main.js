$(document).ready( function(){
  // $('#dropdown').css("display","none");
  $('#dropdown').hide();

});

$(document).on('click', 'nav ul li', function() {
  // e.preventDefault();
  $('.logo').css("z-index","999");
  // $('.menu-icon').css("display","none");
  // $('.menu-close-icon').css("display","block");
  $('.menu-links').slideDown(200);
  // $('.social-button').show(800);
  // $('.menu-links').show();
});

// $(document).on('click', '.menu-close-icon', function(e) {
//   e.preventDefault();
  
//   $('.menu-links').stop().slideUp(100);
//   $('.menu-icon').css("display","block");
//   $('.menu-close-icon').css("display","none");
// });

$(document).on({
  mouseenter: function(){
    $('.menu-links').css("display","block");
  },
  mouseover: function(){
    $('.menu-links').css("display","block");
  },
  mouseleave: function(){
    $('.logo').css("z-index","4000");
    // $('.social-button').hide(1);
    $('.menu-links').stop().slideUp(400);
  }
}, '.menu-links'); // passing the selector in as an argument to the .on function

$(document).on('click', '#dropdown-link > a', function(e) {
  e.preventDefault();
  // $('.logo').css("z-index","999");
  // $('.menu-icon').css("display","none");
  // $('.menu-close-icon').css("display","block");
  $('#dropdown').css("display","table");
  $('#dropdown').hide();
  $('#dropdown').slideDown(200);
  // $('.social-button').show(800);
  // $('.menu-links').show();
});

$(document).on({
  mouseenter: function(){
    $('#dropdown').css("display","table");
  },
  mouseover: function(){
    $('#dropdown').css("display","table");
  },
  mouseleave: function(){
    $('#dropdown').stop().slideUp(400);
  }

}, '#dropdown');

$(document).on({
  mouseleave: function(){
    $('#dropdown').stop().slideUp(400);
  }

}, '#dropdown-link');