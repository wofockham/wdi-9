jQuery.fn.greenify = function () {

  $(this).css('color', 'pink');
  return this; // enable chaining

};

$(document).ready(function () {
  $('span').greenify().addClass('fancy');
});