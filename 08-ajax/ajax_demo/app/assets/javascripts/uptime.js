$(document).ready(function () {

  var fetchUptime = function () {
    var request = new XMLHttpRequest();
    request.open('GET', '/uptime');
    request.onreadystatechange = function () {
      if (request.readyState === 4) {
        $('#uptime').html( request.responseText );
        fetchUptime();
      }
    };

    request.send();
  };

  fetchUptime();

});