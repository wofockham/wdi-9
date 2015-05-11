$(document).ready(function () {

  // Palette building.
  var addColor = function () {
    var color = $('#color').val();

    var $box = $('<div></div>').addClass('box');
    $box.css('background-color', color);

    $box.on('click', selectColor);

    $('#palette').prepend($box);
  };

  $('#addColor').on('click', addColor);


  // Set current paint colour.
  var selectColor = function () {
    var color = $(this).css('background-color');
    console.log('you selected', color);
  };

  console.log('current box count', $('.box').length);

});