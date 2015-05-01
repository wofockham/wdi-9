/*
 _____      _               _ _
|_   _|    | |             (_) |
  | | _ __ | |__   ___ _ __ _| |_ __ _ _ __   ___ ___
  | || '_ \| '_ \ / _ \ '__| | __/ _` | '_ \ / __/ _ \
 _| || | | | | | |  __/ |  | | || (_| | | | | (_|  __/
 \___/_| |_|_| |_|\___|_|  |_|\__\__,_|_| |_|\___\___| Code along

*/

// Cats

// Factories can be used to produce Plain Old Objects.
var catFactory = function (age, furColor, name) {
  var cat = {};
  cat.age = age;
  cat.furColor = furColor;
  cat.name = name;
  cat.meow = function () {
    console.log(this.name + ' says: miaow');
  };

  return cat;
};

// We can easily create cats now using a one line call to the factory.
var lizzieTheCat = catFactory(18, 'grey', 'Lizzie');

var cuteCats = [
  catFactory(18, 'grey', 'Lizzie'),
  catFactory(1, 'black', 'Daemon'),
  catFactory(5, 'white', 'Benji')
];


// Marx Brothers

var brotherFactory = function (name, instrument, vice) {
  return {
    // key: value from the variable
    "name": name,
    "instrument": instrument,
    "vice": vice,
    "play": function () {
      console.log(this.name + ' plays the ' + this.instrument);
    }
  };
};

var groucho = brotherFactory('Groucho', 'guitar', 'cigars');
var harpo = brotherFactory('Harpo', 'harp', 'mutism');
var chico = brotherFactory('Chico', 'piano', 'infidelity');


// Constructors

// Constructors give us more specific kinds of objects,
// allowing us to share code between them by adding
// keys and values to their prototypes.
var Cat = function (age, furColor, name) {
  this.age = age;
  this.furColor = furColor;
  this.name = name;
};

var edna = new Cat(101, 'blue', 'Edna');
var gladys = new Cat(101, 'pink', 'Gladys');

// Here we extend the Cat prototype and add new behaviour,
// which will be available even in previously created Cats!
Cat.prototype.meow = function () {
  console.log(this.name + ' says miaow');
};
