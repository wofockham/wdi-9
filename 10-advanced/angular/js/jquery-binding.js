$(document).ready(function () {

  $('#name').on('keyup', function () {
    var name = $(this).val();
    $('h1').text('Hello ' + name);
  });

});
