var app = app || {};

app.Sneaky = Backbone.Model.extend({
  urlRoot: '/sneakies',
  defaults: {
    content: 'Secret content'
  }
});
