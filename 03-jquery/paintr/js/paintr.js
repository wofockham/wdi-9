$(document).ready(function () {

  // Palette building.
  var addColor = function () {
    var color = $('#color').val();

    var $box = $('<div></div>').addClass('box');
    $box.css('background-color', color);

    $('#palette').prepend($box);
  };

  $('#addColor').on('click', addColor);


  // Set current paint colour.
  var selectColor = function () {
    var color = $(this).css('background-color');
    $('#selectedColor').css('background-color', color);
  };

  // Delegate to the parent
  $('#palette').on('click', '.box', selectColor);


  // Set up the canvas.
  var createCanvas = function(pixelCount) {
    for (var i = 0; i < pixelCount; i++) {
      $('<div></div>').addClass('pixel').appendTo('#canvas');
    }
  }

  createCanvas(10000);

  var paint = function (event) {
    if (event.ctrlKey) {
      var color = $('#selectedColor').css('background-color');
      $(this).css('background-color', color);
    }
  };

  // Delegation to the rescue again.
  $('#canvas').on('mouseover', '.pixel', paint);

});






