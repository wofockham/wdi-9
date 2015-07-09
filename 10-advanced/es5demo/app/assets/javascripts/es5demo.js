$(document).ready(function () {
  "use strict";

  var bros = ['groucho', 'harpo', 'chico'];

  var fullNames = bros.map(function (brother) {
    return brother + ' Marx';
  });

  console.log(fullNames);

});