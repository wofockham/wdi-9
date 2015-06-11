$(document).ready(function () {

  var pageNumber = 1;
  var requestInProgress = false;

  var fetchImages = function () {
    var query = $('#search').val();
    var flickrUrl = 'https://api.flickr.com/services/rest/?jsoncallback=?';

    console.log('fetching images', query, pageNumber);

    requestInProgress = true;

    $.getJSON(flickrUrl, {
      method: 'flickr.photos.search', // See the docs for other interesting methods.
      api_key: '2f5ac274ecfac5a455f38745704ad084',
      text: query,
      format: 'json',
      per_page: 40,
      page: pageNumber++
    }).done(function (results) {

      requestInProgress = false;

      // Returns a crufty Flickr thumbnail URL for a given photo object.
      var generateUrl = function (photo) {
        return [
          'http://farm', photo.farm, '.static.flickr.com/',
          photo.server, '/', photo.id, '_', photo.secret, '_m.jpg'
        ].join('');
      };

      var $results = $('#results'); // Cache the results div for repeated reuse.

      $.each(results.photos.photo, function (i, photo) {
        var url = generateUrl(photo);
        var $img = $('<img>').addClass('thumbnail').attr('src', url);
        $results.append($img);
      })
    });
  };

  $(window).on('scroll', function () {
    if (requestInProgress) {
      return;
    }

    var reloadRegion = $(document).height() * 0.8; // 80% of the way through.

    if ($(window).height() + $(window).scrollTop() > reloadRegion) {
      fetchImages();
    }

  });

  $('#image_search').on('submit', function (e) {

    e.preventDefault();
    fetchImages();

  });
});
