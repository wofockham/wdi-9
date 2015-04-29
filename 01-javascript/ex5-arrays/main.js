// Your top choices
// Create an array to hold your top choices (colors, presidents, whatever).
// For each choice, log to the screen a string like: "My #1 choice is blue."
// Bonus: Change it to log "My 1st choice, "My 2nd choice", "My 3rd choice", picking the right suffix for the number based on what it is.

// keys       //   0     ,  1    , 2        , 3
var cuisines = ['Chinese', 'Thai', 'Italian', 'Scottish'];

for (var k = 0; k < cuisines.length; k++) {
  console.log( "My #" + (1 + k) + " choice is " + cuisines[k] );
}

// Backwards!
// for (var k = cuisines.length - 1; k >= 0; k--) {
//   console.log( "My #" + (1 + k) + " choice is " + cuisines[k] );
// }
