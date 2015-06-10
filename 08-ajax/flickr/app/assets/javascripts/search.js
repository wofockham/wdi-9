$(document).ready(function () {

  $(window).on('scroll', function () {
    console.log($(window).scrollTop(), $(document).height());
    // Your infinite scroll logic goes here...
  });

  $('#image_search').on('submit', function (e) {

    e.preventDefault();

    var query = $('#search').val();
    var flickrUrl = 'https://api.flickr.com/services/rest/?jsoncallback=?';

    $.getJSON(flickrUrl, {
      method: 'flickr.photos.search', // See the docs for other interesting methods.
      api_key: '2f5ac274ecfac5a455f38745704ad084',
      text: query,
      format: 'json',
      per_page: 500
    }).done(function (results) {

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

  });
});
