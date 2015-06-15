var app = app || {};

// Use {{ Handlebars style }} interpolation instead of <%= erb style %>.
_.templateSettings = {
  evaluate : /\{\[([\s\S]+?)\]\}/g,     // {[ console.log("Hello"); ]} - runs
  interpolate : /\{\{([\s\S]+?)\}\}/g   // {{ key }} - interpolates
};

// We wait for the document to finish loading before we do things that might use it.
$(document).ready(function () {
  // Fetch posts from the database on the server.
  app.blogPosts = new app.Posts();
  app.blogPosts.fetch().done(function () {
    app.router = new app.AppRouter();
    Backbone.history.start({pushState: Modernizr.history});
  });
});









