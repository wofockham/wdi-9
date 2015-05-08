$(document).ready(function () {

  // Parallax
  var moveBill = function () {
    // Move Bill at half the rate of the window scrolling.
    $('.parallax').css('background-position-y', $(window).scrollTop() * -0.1);
  };

  $(window).on('scroll', moveBill);


  // Bubbles
  var addBubble = function (event) {
    var $bubble = $('<div class="bubble"></div>');

    $bubble.css('top', event.pageY);
    $bubble.css('left', event.pageX);

    $('body').append($bubble);
  };

  $(window).on('mousemove', addBubble);



});
