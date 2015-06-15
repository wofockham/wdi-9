var app = app || {};

app.CommentView = Backbone.View.extend({
  // tagName: 'div', // this is the default anyway so I can leave it.
  render: function () {
    var commentViewTemplate = $('#commentTemplate').html();
    var commentViewHTML = _.template(commentViewTemplate);

    this.$el.html(commentViewHTML(this.model.toJSON()));
    this.$el.appendTo('#comments');
  }
});