_.templateSettings = {
  evaluate : /\{\[([\s\S]+?)\]\}/g,     // {[ console.log("Hello"); ]} - runs
  interpolate : /\{\{([\s\S]+?)\}\}/g   // {{ key }} - interpolates
};

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
  events: {
    'click': 'showPost'
  },
  render: function () {
    var postListTemplate = $('#postListTemplate').html();
    var postListHTML = _.template(postListTemplate);

    this.$el.html( postListHTML( this.model.toJSON() ) );

    $('#posts').append(this.$el);
  },
  showPost: function () {
    router.navigate('posts/' + this.model.get('id'), true);
  }
});

var router;

$(document).ready(function () {
  router = new AppRouter();
  Backbone.history.start();
});









