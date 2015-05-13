if (! localStorage) {
  // Fake shithouse local storage.
  var localStorage = {};
}


$(document).ready(function () {

  var saveBrother = function () {
    var brothers = localStorage['favouriteBros'];

    if (brothers) {
      // Convert the saved string back into an actual JS array.
      brothers = JSON.parse(brothers);
    } else {
      // First time, so we can set up a new empty array
      brothers = [];
    }

    var brother = $('#brother').val();

    brothers.push(brother);

    localStorage['favouriteBros'] = JSON.stringify(brothers);

    $('#faves').html(brothers.join(' and '));
    $('#brother').val(''); // Reset the input.
  };

  $('#saveBrother').on('click', saveBrother);

});























$(document).ready(function () {

  var bumpCount = function () {
    var count = localStorage['count'];

    count = parseFloat(count) || 0; // Convert to a number.

    count += 1;

    $('#result').text( count + ' clicks' );

    localStorage['count'] = count;
  };

  $('#clickMe').on('click', bumpCount);

});
