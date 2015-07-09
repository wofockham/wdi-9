var http = require('http');

var server = http.createServer(function (req, res) {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello world\n');
  console.log('Serving a request...');
});

server.listen(1337, '127.0.0.1');
console.log('Server running http://127.0.0.1:1337/');
