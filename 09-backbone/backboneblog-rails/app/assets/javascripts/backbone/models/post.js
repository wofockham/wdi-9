var app = app || {};

// Model.
app.Post = Backbone.Model.extend({
  urlRoot: '/posts',
  defaults: {
    title: 'Untitled Post',
    content: 'Untitled Post Content'
  }
});