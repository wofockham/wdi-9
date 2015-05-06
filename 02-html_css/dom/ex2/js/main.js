var books = [
  {title: 'The Design of EveryDay Things',
   author: 'Don Norman',
   alreadyRead: false,
   cover: 'http://fillmurray.com/200/150'
  },
  {title: 'The Most Human Human',
  author: 'Brian Christian',
  alreadyRead: true,
  cover: 'http://fillmurray.com/200/100'
  }
];

var body = document.getElementsByTagName('body')[0];
var list = document.createElement('ul');
body.appendChild(list);

for (var i = 0; i < books.length; i++) {
  var book = books[i];

  var listItem = document.createElement('li');
  listItem.innerHTML = [book.title, 'by', book.author].join(' ');

  var cover = document.createElement('img');
  cover.src = book.cover;

  listItem.appendChild(cover);

  if (book.alreadyRead) {
    listItem.style.opacity = 0.5;
  }

  list.appendChild(listItem);
}





