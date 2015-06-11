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

var funkifyNumbers = function () {
  numbers = _(numbers).map(funkify);
  showNumbers();
};

var funkify = function (x) {
  var equation = $('#number').val();
  return eval(equation);
};

$(document).ready(function () {

  $('#add_number').on('click', addNumber);
  $('#square').on('click', squareNumbers);
  $('#funkify').on('click', funkifyNumbers);

  $('#start').on('click', startSpew);
  $('#stop').on('click', stopSpew);

});













