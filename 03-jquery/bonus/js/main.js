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

    var size = Math.random() * 50;

    $bubble.css({
      top: event.pageY,
      left: event.pageX,
      width: size,
      height: size
    });

    $('body').append($bubble);

    setTimeout(function () {
      $bubble.animate({top: '-1000px'}, 2000, function () {
        $(this).remove();
      })
    }, 1000);

  };

  $(window).on('mousemove', addBubble);

});
