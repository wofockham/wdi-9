$(document).ready(function () {

  // Traditional jQuery animation:

  // $('.image').animate({left: '50%'}, 500, function () {
  //   console.log('complete');
  // });


  // TweenMax method:
  // TweenMax.to( selector, timeInSeconds, object );

  TweenMax.to( '.image', 0.5, { left: '50%' });
});