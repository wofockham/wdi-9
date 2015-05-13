var currentTween;

$(document).ready(function () {

  // Traditional jQuery animation:

  // $('.image').animate({left: '50%'}, 500, function () {
  //   console.log('complete');
  // });


  // TweenMax method:
  // TweenMax.to( selector, timeInSeconds, object );

  var animateImage = function () {
    currentTween = TweenMax.to( '.image', 3, {
      backgroundColor: 'pink',
      left: '50%',
      top: '50%',
      width: 600,
      xPosition: '-50%',
      yPosition: '-50%',
      rotation: '1080',
      delay: 1,
      yoyo: true,
      repeat: -1,
      repeatDelay: 0.5,
      ease: Bounce.easeOut,
      onStart: function () {
        // console.log('Animation Started');
      },
      onUpdate: function () {
        // console.log('Animation updated');
      }
    });
  };

  $('html').on('click', animateImage);
});