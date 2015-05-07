var videos = document.getElementsByTagName('a');

for (var i = 0; i < videos.length; i++) {
  var link = videos[i];
  var thumbnail = youtube.generateThumbnailUrl(link.getAttribute('href'));

  var image = document.createElement('img');
  image.setAttribute('src', thumbnail);

  link.appendChild(image);
}
