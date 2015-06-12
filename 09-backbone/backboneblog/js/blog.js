// Use {{ Handlebars style }} interpolation instead of <%= erb style %>.
_.templateSettings = {
  evaluate : /\{\[([\s\S]+?)\]\}/g,     // {[ console.log("Hello"); ]} - runs
  interpolate : /\{\{([\s\S]+?)\}\}/g   // {{ key }} - interpolates
};

// Router is similar to routes.rb in Rails but with code actions as well.
var AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'viewPost'
  },

  // GET /
  index: function () {
    var appView = new AppView({collection: blogPosts});
    appView.render();
  },

  // GET /posts/:id
  viewPost: function (id) {
    var post = blogPosts.get(id);
    var postView = new PostView({model: post});
    postView.render();
  }
});

// Model.
var Post = Backbone.Model.extend({
  defaults: {
    title: 'Untitled Post',
    content: 'Untitled Post Content'
  }
});

// Collection of a particular model.
var Posts = Backbone.Collection.extend({
  model: Post
});

// Seed data: these would really come from the database.
var blogPosts = new Posts([
  new Post({id: 1, title: 'Post 1', content: 'Content of first post'}),
  new Post({id: 2, title: 'Post 2nd', content: 'Content of second post'}),
  new Post({id: 3, title: 'Post the 3rd', content: 'Content of third post about ponies'}),
  new Post({id: 4, title: 'Post Four', content: 'Hot chocolate in Sydney'})
]);


// Shows the landing page and a summary of all the blog posts.
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

// View for a single post title (i.e. the summary view).
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

// View for a single post.
var PostView = Backbone.View.extend({
  el: '#main',
  render: function () {
    var postTemplate = $('#postTemplate').html();
    var postHTML = _.template(postTemplate);

    this.$el.html(postHTML(this.model.toJSON()));
  }
});

var router;

// We wait for the document to finish loading before we do things that might use it.
$(document).ready(function () {
  router = new AppRouter();
  Backbone.history.start();
});









