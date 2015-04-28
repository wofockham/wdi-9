// The Fortune Teller

// Why pay a fortune teller when you can just program your fortune yourself?

// Store the following into variables: number of children, partner's name, geographic location, job title.
// Output your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."

var numOfKids = 9;
var partnerName = 'Jorge';
var geoLocation = 'Barbados';
var jobTitle = 'Wire scrubber';

var fortune = "You will be a " + jobTitle
  + " in " + geoLocation
  + ", and married to " + partnerName
  + " with " + numOfKids + " kids.";

console.log(fortune);

// The Age Calculator

// Forgot how old someone is? Calculate it!

// Store the current year in a variable.
// Store their birth year in a variable.
// Calculate their 2 possible ages based on the stored values.
// Output them to the screen like so: "They are either NN or NN", substituting the values.

var currentYear = 2015;
var birthYear = 1972;

var possibleAge1 = currentYear - birthYear; // After their birthday
var possibleAge2 = possibleAge1 - 1; // Before their birthday.

console.log("They are either " + possibleAge2 + " or " + possibleAge1);

// The Lifetime Supply Calculator

// Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!

// Store your current age into a variable.
// Store a maximum age into a variable.
// Store an estimated amount per day (as a number).
// Calculate how many you would eat total for the rest of your life.
// Output the result to the screen like so: "You will need NN to last you until the ripe old age of X".

var currentAge = 47;
var deathAge = 62;
var amountPerDay = 12;
var amountPerYear = amountPerDay * 365.25;
var yearsRemaining = deathAge - currentAge;
var amountRequired = amountPerYear * yearsRemaining;
console.log("You will need " + amountRequired +" to last you until the ripe old age of " + deathAge);

// The Geometrizer

// Calculate properties of a circle, using the definitions here.

// Store a radius into a variable.
// Calculate the circumference based on the radius, and output "The circumference is NN".
// Calculate the area based on the radius, and output "The area is NN".

var radius = 17;
var circumference = Math.PI * radius * 2;
var area = Math.PI * radius * radius;

console.log("The circumference is " + circumference);
console.log("The area is " + area);


// The Temperature Converter

// It's hot out! Let's make a converter based on the steps here.

// Store a celsius temperature into a variable.
// Convert it to fahrenheit and output "NN°C is NN°F".
// Now store a fahrenheit temperature into a variable.
// Convert it to celsius and output "NN°F is NN°C."

var celcius = 20;
var fahrenheit = celcius * 1.8 + 32;
console.log(celcius + "°C is " + fahrenheit + "°F");

var fahrenheit = 68;
var celcius = (fahrenheit - 32) / 1.8;
console.log(fahrenheit + "°F is " + celcius + "°C");




