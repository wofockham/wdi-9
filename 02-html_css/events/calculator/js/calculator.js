var squareButton = document.getElementById('square-button');

var square = function () {
  var n = document.getElementById('square-input').value;

  n = parseFloat(n); // Floating point decimal goodness.

  var result = n * n;

  document.getElementById('solution').innerHTML = "The result is: " + result;
};

squareButton.addEventListener('click', square);
