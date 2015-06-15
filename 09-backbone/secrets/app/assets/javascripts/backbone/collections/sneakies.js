var app = app || {};

app.Sneakies = Backbone.Collection.extend({
  url: '/sneakies',
  model: app.Sneaky
});
