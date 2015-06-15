var app = app || {};

// Router is similar to routes.rb in Rails but with code actions as well.
app.AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'viewPost'
  },

  // GET /
  index: function () {
    var appView = new app.AppView({collection: app.blogPosts});
    appView.render();
  },

  // GET /posts/:id
  viewPost: function (id) {
    var post = app.blogPosts.get(id);
    var postView = new PostView({model: post});
    postView.render();
  }
});
