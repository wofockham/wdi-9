var path = require('path');
var webpack = require('webpack');

module.exports = {
  //choose a dev tool to enhance debugging. "eval" means that each module will be executed with eval.
  //eval takes module and stringify it - build/rebuild speed very fast
  devtool: 'eval',
  //entry points on modules that are loaded on the start, they all bundle together in 1 file
  entry: [
    // 'webpack-dev-server/client?http://localhost:3000',    //path to js files (client)
    // 'webpack/hot/only-dev-server',                        //path to js files (server) with our plugin it ll send pices of changed code
    'main.js'
  ],
  //the output of the app
  output: {
    path: path.resolve('build'),    //the name of folder where bundle.js ll live
    filename: 'bundle.js'
  },
  //add additional plugins to the compiler
  // plugins: [
  //   new webpack.HotModuleReplacementPlugin()    //hot-module replacement. the updated module is replaced and via socket shown up on the page
  // ],
  //when we require or import files we don't need to tell the extansion of the files .js and .jsx
  resolve: {
    extensions: ['', '.js', '.jsx']
  },
  module: {
    //options that can affect normal modules
    //tells webpack how to handle different extensions(automaticaly applies loaders)
    loaders: [
      {
        test: /\.jsx?$/,         //is commonly used to match the file extension
        loaders: ['babel'],      //'react-hot' goes here as well, name of the loader that handles this condition
        //include: [path.resolve('scripts')]   //is commonly used to match the directories
      }
      //{
      //  test: /\.css$/,
      //  loader: 'style!css?sourceMap'
      //}
    ]
  },
  stats: {
    colors: true
  }
};