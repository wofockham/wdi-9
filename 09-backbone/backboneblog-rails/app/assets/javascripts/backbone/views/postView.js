var app = app || {};

// View for a single post.
var PostView = Backbone.View.extend({
  el: '#main',
  events: {
    'click button': 'submitComment'
  },
  render: function () {
    var postTemplate = $('#postTemplate').html();
    var postHTML = _.template(postTemplate);

    this.$el.html(postHTML(this.model.toJSON()));

    this.comments = new app.Comments({post_id: this.model.get('id')});
    this.comments.fetch();
  },

  submitComment: function (e) {
    e.preventDefault();

    var author = $('#author').val();
    var content = $('#content').val();

    $('#author, #content').val(''); // Reset the form for re-use.

    var comment = new app.Comment({
      author: author,
      content: content,
      post_id: this.model.get('id')
    });

    var view = this;
    comment.save().done(function () {
      view.comments.fetch(); // Fetch and render any new comments.
    });
    // this.comments.add(comment);
  }
});














