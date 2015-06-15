$(document).ready(function () {

  if ($('#shames').length === 0) {
    return;
  }

  var fetchSneakies = function () {
    app.sneakies = new app.Sneakies();
    app.sneakies.fetch().done(function (sneakies) {
      $('#shames').empty();

      app.sneakies.each(function (sneaky) {
        var $li = $('<li/>');
        $li.text(sneaky.get('content'));
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

    var sneaky = new app.Sneaky({content: secret});
    sneaky.save();
  });

});












