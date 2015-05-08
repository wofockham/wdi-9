var $videos = $('a');

var thumbnailify = function (link) {
  var $link = $(link);
  var thumbnail = youtube.generateThumbnailUrl($link.attr('href'));

  var $image = $('<img>').attr('src', thumbnail);

  $link.append($image);

  $link.on('click', function (event) {
    event.preventDefault(); // Don't follow the link as would usually be done.

    var embedUrl = youtube.generateEmbedUrl( $link.attr('href') );
    var embedHTML = '<iframe width="420" height="315" src="' + embedUrl + '"></iframe>';

    $('#player').hide().fadeIn(3000);
    $('#player').html(embedHTML);

  });
};

for (var i = 0; i < $videos.length; i++) {
  thumbnailify($videos[i]);
}

// Even fancier:
// $videos.each(function () {
//   var thumbnail = youtube.generateThumbnailUrl($(this).attr('href'));
//   var $image = $('<img>').attr('src', thumbnail);
//   $(this).append($image);
// });
