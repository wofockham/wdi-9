var AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'viewPost'
  },

  index: function () {
    var appView = new AppView();
    appView.render();
  },

  viewPost: function (id) {
    console.log('viewPost route', id);
  }
});

var AppView = Backbone.View.extend({
  el: '#main',
  render: function () {
    var appHTML = $('#appTemplate').html();
    this.$el.html(appHTML);
  }
});


$(document).ready(function () {
  var router = new AppRouter();
  Backbone.history.start();
});