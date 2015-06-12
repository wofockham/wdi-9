var AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'viewPost'
  },

  index: function () {
    var appView = new AppView({collection: blogPosts});
    appView.render();
  },

  viewPost: function (id) {
    console.log('viewPost route', id);
  }
});

var Post = Backbone.Model.extend({
  defaults: {
    title: 'Untitled Post',
    content: 'Untitled Post Content'
  }
});

var Posts = Backbone.Collection.extend({
  model: Post
});

var blogPosts = new Posts([
  new Post({id: 1, title: 'Post 1', content: 'Content of first post'}),
  new Post({id: 2, title: 'Post 2nd', content: 'Content of second post'}),
  new Post({id: 3, title: 'Post the 3rd', content: 'Content of third post about ponies'}),
  new Post({id: 4, title: 'Post Four', content: 'Hot chocolate in Sydney'})
]);



var AppView = Backbone.View.extend({
  el: '#main',
  render: function () {
    var appHTML = $('#appTemplate').html();
    this.$el.html(appHTML);

    this.collection.each(function (post) {
      var postListView = new PostListView({model: post});
      postListView.render();
    });
  }
});

var PostListView = Backbone.View.extend({
  tagName: 'li',
  render: function () {
    console.log(this.model.toJSON());
  }
});

$(document).ready(function () {
  var router = new AppRouter();
  Backbone.history.start();
});









