// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//(1) IF name already exists in property
//     Add one
//   ELSE
//     Add name to property with default value of 1
// (2) Create an empty array for each office
// (3) Push the vote tally to the array
// (4) Find the highest number of votes
// (5) Use the highest number of votes to map to the associated nested property

// __________________________________________
// Initial Solution
 
// function countVotes(votes) {
//   for (var office in voteCount) {
//     for (var voter in votes) { 
//       if (voteCount[office].hasOwnProperty(votes[voter][office])) {
//         voteCount[office][votes[voter][office]] += 1;
//       }
//       else {
//           voteCount[office][votes[voter][office]] = 1;
//       };
//     };
//   };
// }; 

// function findWinner(voteCount) {
//   for (var office in voteCount) {
    
//     // Push all number of votes into an array
//     var office_array = [] 
//     for (var x in voteCount[office]) {
//       office_array.push(voteCount[office][x]);
//     };

//     // Find the highest number of votes
//     var office_winning_num = Math.max(...office_array);

//     // use the max num to map back to the property it's associated with
//     for (var y in voteCount[office]) {
//       if(voteCount[office].hasOwnProperty(y)) {
//         if (voteCount[office][y] === office_winning_num) {
//           officers[office] = y;
//         };
//       };
//     };
//   };
// };

// countVotes(votes);
// findWinner(voteCount);

// __________________________________________
// Refactored Solution

function countVotes(votes) {
  for (var office in voteCount) {
    for (var voter in votes) { 
      if (voteCount[office].hasOwnProperty(votes[voter][office])) {
        voteCount[office][votes[voter][office]] += 1;
      }
      else {
          voteCount[office][votes[voter][office]] = 1;
      };
    };
  };
}; 

function findWinner(voteCount) {
  for (var office in voteCount) {
    
    // Push all number of votes into an array
    var office_array = [] 
    for (var x in voteCount[office]) {
      office_array.push(voteCount[office][x]);
    };

    // Find the highest number of votes
    var office_winning_num = Math.max(...office_array);

    // use the max num to map back to the property it's associated with
    for (var y in voteCount[office]) {
      if (voteCount[office][y] === office_winning_num) {
        officers[office] = y;
      };
    };
  };
};

countVotes(votes);
findWinner(voteCount);

// __________________________________________
// Reflection

// jeez, that was hard!

// What did you learn about iterating over nested objects in JavaScript?
// Oy, after that, I feel like I'm pretty good at isolating what I want in nested data structures. 
// That being said, it was really helpful to start with one of the offices (i.e. President), getting
// it to work, then setting up the external loop.

// Were you able to find useful methods to help you with this?
// hasOwnProperty

// What concepts were solidified in the process of working through this challenge?
// I wouldn't say iteration is solidified, but I'm a lot better at it!



// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)