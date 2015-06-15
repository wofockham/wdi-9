var app = app || {};

app.Comments = Backbone.Collection.extend({
  url: function () {
    return '/posts/' + this.post_id + '/comments';
  },

  model: app.Comment,

  initialize: function (options) {
    this.post_id = options.post_id;
    this.on('add', function (comment) {
      var commentView = new app.CommentView({model: comment});
      commentView.render();
    });
  }
});
