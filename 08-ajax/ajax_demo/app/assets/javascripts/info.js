$(document).ready(function () {

  var fetchInfo = function () {
    $.ajax({
      url: '/info',
      dataType: 'json',
    }).done(function (result) {
      $('#time').html(result.time);
    }).done(function (result) {
      $('#uptime').html(result.uptime);
    }).done(function (result) {
      $('#randos').append(result.random + ', ');
    }).done(fetchInfo).fail(function () {
      alert('Something bad happen');
    });
  }

  //fetchInfo();

});

