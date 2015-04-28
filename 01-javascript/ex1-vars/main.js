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












