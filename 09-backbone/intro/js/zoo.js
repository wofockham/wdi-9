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
  el: '#main',
  initialize: function () {
    console.log('ZooView initialized');
  },
  render: function () {
    var view = this;
    view.collection.each(function (model) {
      var $h2 = $('<h2/>').text(model.get('type'));
      view.$el.append($h2);
    });
  }
});

$(document).ready(function () {
  var myZooView = new ZooView({collection: myZoo});
  myZooView.render();
});










