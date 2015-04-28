// The Fortune Teller

// Why pay a fortune teller when you can just program your fortune yourself?

// Store the following into variables: number of children, partner's name, geographic location, job title.
// Output your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."

var tellFortune = function (numOfKids, partnerName, geoLocation, jobTitle) {
  var fortune = "You will be a " + jobTitle
    + " in " + geoLocation
    + ", and married to " + partnerName
    + " with " + numOfKids + " kids.";

  console.log(fortune);
};

tellFortune(9, 'Jorge', 'Barbados', 'Wire scrubber');
tellFortune(0, 'Maria', 'Iceland', 'Wine taster');



// The Age Calculator

// Forgot how old someone is? Calculate it!

// Store the current year in a variable.
// Store their birth year in a variable.
// Calculate their 2 possible ages based on the stored values.
// Output them to the screen like so: "They are either NN or NN", substituting the values.

var calculateAge = function (birthYear) {

  var today = new Date();
  var currentYear = today.getFullYear();

  var possibleAge1 = currentYear - birthYear; // After their birthday
  var possibleAge2 = possibleAge1 - 1; // Before their birthday.

  console.log("They are either " + possibleAge2 + " or " + possibleAge1);
};

calculateAge(1972);
calculateAge(1900);


// The Lifetime Supply Calculator

// Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!

// Store your current age into a variable.
// Store a maximum age into a variable.
// Store an estimated amount per day (as a number).
// Calculate how many you would eat total for the rest of your life.
// Output the result to the screen like so: "You will need NN to last you until the ripe old age of X".

var calculateSupply = function (currentAge, amountPerDay) {
  var deathAge = 62;
  var amountPerYear = amountPerDay * 365.25;
  var yearsRemaining = deathAge - currentAge;
  var amountRequired = Math.round(amountPerYear * yearsRemaining);
  console.log("You will need " + amountRequired +" to last you until the ripe old age of " + deathAge);
};

calculateSupply(42, 12);
calculateSupply(61, 1.23);


// The Geometrizer

// Calculate properties of a circle, using the definitions here.

// Store a radius into a variable.
// Calculate the circumference based on the radius, and output "The circumference is NN".
// Calculate the area based on the radius, and output "The area is NN".

var calcCircumference = function (radius) {
  var circumference = Math.PI * radius * 2;
  console.log("The circumference is " + circumference);
};

calcCircumference(17);

var calcArea = function (radius) {
  var area = Math.PI * radius * radius;
  console.log("The area is " + area);
};

calcArea(17);

// The Temperature Converter

// It's hot out! Let's make a converter based on the steps here.

// Store a celsius temperature into a variable.
// Convert it to fahrenheit and output "NN°C is NN°F".
// Now store a fahrenheit temperature into a variable.
// Convert it to celsius and output "NN°F is NN°C."

var celciusToFahrenheit = function (celcius) {
  var fahrenheit = celcius * 1.8 + 32;
  console.log(celcius + "°C is " + fahrenheit + "°F");
};

celciusToFahrenheit(20);

var fahrenheitToCelcius = function (fahrenheit) {
  var celcius = (fahrenheit - 32) / 1.8;
  console.log(fahrenheit + "°F is " + celcius + "°C");
};

fahrenheitToCelcius(68);



