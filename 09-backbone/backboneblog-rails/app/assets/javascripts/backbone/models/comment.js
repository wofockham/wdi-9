var app = app || {};

app.Comment = Backbone.Model.extend({
  urlRoot: function () {
    return '/posts/' + this.get('post_id') + '/comments';
  },
  defaults: {
    author: 'Anonymous Coward',
    content: 'I love your blog'
  }
});