
var body = document.getElementsByTagName('body')[0];
body.style.fontFamily = 'Arial, sans-serif';

document.getElementById('nickname').innerHTML = 'The Blade';
document.getElementById('favorites').innerHTML = 'Scotch, Marx Brothers, Scholasticism';
document.getElementById('hometown').innerHTML = 'Sydney';

var listItems = document.getElementsByTagName('li');
for (var i = 0; i < listItems.length; i++) {
  var li = listItems[i];
  li.className = 'listItem';
}

var bill = document.createElement('img');
bill.src = 'http://fillmurray.com/800/700';
body.appendChild(bill);
