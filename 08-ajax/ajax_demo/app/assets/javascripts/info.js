$(document).ready(function () {

  var fetchInfo = function () {
    var request = new XMLHttpRequest();
    request.open('GET', '/info');
    request.onreadystatechange = function () {
      if (request.readyState === 4) {
        // Decode the string into a Javascript object.
        var info = JSON.parse( request.responseText );
        $('#time').html(info.time);
        $('#uptime').html(info.uptime);
        $('#randos').append(info.random + ', ');

        console.warn(info.brother);

        setTimeout(fetchInfo, 1000);
      }
    };
    request.send();
  };

  fetchInfo();

});