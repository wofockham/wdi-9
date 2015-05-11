$(document).ready(function () {

  var $videos = $('a');

  for (var i = 0; i < $videos.length; i++) {
    var $link = $($videos[i]);
    var thumbnail = youtube.generateThumbnailUrl($link.attr('href'));

    var $image = $('<img>').attr('src', thumbnail);

    $link.append($image);
  }

// Even fancier:
// $videos.each(function () {
//   var thumbnail = youtube.generateThumbnailUrl($(this).attr('href'));
//   var $image = $('<img>').attr('src', thumbnail);
//   $(this).append($image);
// });

  // Fancy text-shadow because Pam said to.
  $('h2').funText(100, 'reverseRainbow');
  $('a').funText(25, 'reverseRainbow');


});