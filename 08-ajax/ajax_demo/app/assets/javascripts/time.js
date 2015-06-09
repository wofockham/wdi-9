$(document).ready(function () {

  var fetchTime = function () {
    var request = new XMLHttpRequest();
    request.open('GET', '/time');

    request.onreadystatechange = function () {
      if (request.readyState === 4) {
        // Request complete!
        $('#time').html( request.responseText );

        setTimeout(fetchTime, 5000); // Wait 10 seconds before requesting again.
      }
    };

    request.send();

  };

  fetchTime();

});
