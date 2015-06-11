var numbers = [];

var addNumber = function () {
  var n = $('#number').val();
  n = ~~(n); // parseInt() that looks like a sperm.
  numbers.push(n);

  var $box = $('<div class="box"/>').text(n);
  $('#output').append($box);

  $('#number').val('').focus();
};

$(document).ready(function () {

  $('#add_number').on('click', addNumber);

});