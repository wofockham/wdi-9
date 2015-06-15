var app = app || {};

// Use {{ Handlebars style }} interpolation instead of <%= erb style %>.
_.templateSettings = {
  evaluate : /\{\[([\s\S]+?)\]\}/g,     // {[ console.log("Hello"); ]} - runs
  interpolate : /\{\{([\s\S]+?)\}\}/g   // {{ key }} - interpolates
};


// Seed data: these would really come from the database.
app.blogPosts = new app.Posts([
  new app.Post({id: 1, title: 'Post 1', content: 'Content of first post'}),
  new app.Post({id: 2, title: 'Post 2nd', content: 'Content of second post'}),
  new app.Post({id: 3, title: 'Post the 3rd', content: 'Content of third post about ponies'}),
  new app.Post({id: 4, title: 'Post Four', content: 'Hot chocolate in Sydney'})
]);

// We wait for the document to finish loading before we do things that might use it.
$(document).ready(function () {
  app.router = new app.AppRouter();
  Backbone.history.start();
});









