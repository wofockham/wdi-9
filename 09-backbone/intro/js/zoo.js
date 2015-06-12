// Use {{ style }} interpolation, instead of ERB.
_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
};

var AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'animals/:id': 'viewAnimal',
    '*action': function () {
      console.log('that is not a real URL');
    }
  },

  index: function () {
    console.log('you found the index');

    var myZooView = new ZooView({collection: myZoo});
    myZooView.render();
  },
  viewAnimal: function (id) {
    console.log('you are now viewing animal', id)
  }
});

var Animal = Backbone.Model.extend({
  defaults: {
    type: 'generic animal',
    ecosystem: '',
    stripes: 0
  },

  initialize: function () {
    this.on('change:type', function (model) {
      var type = model.get('type');
      console.log('I am now a ' + type);
    });
  }
});

var Zoo = Backbone.Collection.extend({
  model: Animal
});

var animal1 = new Animal({type: 'giraffe', ecosystem: 'savannah'});
var animal2 = new Animal({type: 'zebra', ecosystem: 'savannah', stripes: 57});
var animal3 = new Animal({type: 'butterfly', ecosystem: 'forest'});

var myZoo = new Zoo([animal1, animal2, animal3]);

var ZooView = Backbone.View.extend({
  el: '#main', // jQuery selector for where this view will appear on the page.
  events: {
    'click li': 'animalClick'
  },
  initialize: function () {
    console.log('ZooView initialized');
  },
  render: function () {
    var view = this;

    var animalTemplate = $('#animalTemplate').html();
    var animalHTML = _.template(animalTemplate);

    view.collection.each(function (model) {
      view.$el.append( animalHTML(model.toJSON()) );
    });
  },
  animalClick: function () {
    console.log('you clicked an animal');
  }
});

$(document).ready(function () {
  var router = new AppRouter();
  Backbone.history.start();
});










