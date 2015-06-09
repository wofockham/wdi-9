$(document).ready(function () {

  console.log('everything is ready', Date.now());

  $(document).on('click', function () {
    $(this).css('background-color', 'green');
  });

});