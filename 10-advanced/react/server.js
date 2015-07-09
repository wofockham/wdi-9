var webpack = require('webpack');
var WebpackDevServer = require('webpack-dev-server');
var config = require('./webpack.config');

new WebpackDevServer(webpack(config), {
  hot: true,                            //hot-reload
  historyApiFallback: true,             //whatever path you put into url it ll show main page
  stats: {
    chunkModules: false,                //don't show all the chunk modules in terminal
    colors: true                        //when build runs in terminal it shows up with colors
  }
}).listen(3000, 'localhost', function (err, result) {
    if (err) {
      console.log(err);
    }

    console.log('Listening at http://localhost:3000/');
});
