var numbers = [];

var showNumbers = function () {
  $('#output').empty();
  _(numbers).each(function (n) {
    $('<div class="box"/>').text(n).prependTo('#output');
  });
};

var addNumber = function () {
  var n = $('#number').val();
  n = ~~(n); // parseInt() that looks like a sperm.
  numbers.push(n);

  showNumbers();

  $('#number').val('').focus();
};

var squareNumbers = function () {
  numbers = _(numbers).map(function (n) { return n * n; });
  showNumbers();
};

$(document).ready(function () {

  $('#add_number').on('click', addNumber);
  $('#square').on('click', squareNumbers);

});