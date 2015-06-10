$(document).ready(function () {

  if ($('#shames').length === 0) {
    return;
  }

  var fetchSneakies = function () {
    $.ajax({
      url: '/sneakies.json'
    }).done(function (sneakies) {
      $('#shames').empty();

      $.each(sneakies, function (i, sneaky) {
        var $li = $('<li/>');
        $li.text(sneaky.content);
        $li.appendTo('#shames')
      });

      setTimeout(fetchSneakies, 3000);
    });
  };

  fetchSneakies();

  $('form').submit(function (event) {
    event.preventDefault();

    var secret = $('#secret').val();
    $('#secret').val('').focus(); // Clear out the field for the next secret.

    // Build our form data in the format that the server expects.
    var sneakyData = {
      sneaky: {
        content: secret
      }
    };

    $.ajax({
      url: '/sneakies',
      method: 'POST',
      data: sneakyData
    });
  });

});












