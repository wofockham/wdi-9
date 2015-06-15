var app = app || {};

// Collection of our particular model.
app.Posts = Backbone.Collection.extend({
  model: app.Post,
  url: '/posts'
});
