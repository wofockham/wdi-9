$(document).ready(function () {

  var fetchRandom = function () {
    var request = new XMLHttpRequest();
    request.open('GET', '/random');
    request.send(); // ASYNC!

    request.onreadystatechange = function () {

      if (request.readyState === 4) {
        $('#randos').append( request.responseText + ', ' );
        fetchRandom(); // Recursion
      }

    };
  };

  fetchRandom();

});