var app = app || {};

// Model.
app.Post = Backbone.Model.extend({
  defaults: {
    title: 'Untitled Post',
    content: 'Untitled Post Content'
  }
});