 // JavaScript Olympics

// I paired with Christopher Bunkers on this challenge.

// This challenge took us 1.5 hours.


// Warm Up


// Bulk Up
function bulkUp (array) {
  for (var i = 0; i < array.length; i++) {
    console.log(array[i].win = array[i].name + " won the " + array[i].event + "!");
  }
}

bulkUp([{name: "Lydia Nash",event: "soccer"},{name:"Megan Childress",event:"disc golf"}])

// Jumble your words

function jumble(word) {
  return word.split("").reverse().join("");
}

console.log(jumble("something"))


// 2,4,6,8

function evens(numbers) {
  var empty = []
  for (var i = 0; i < numbers.length; i++) {
   if (numbers[i] % 2 === 0) {
     empty.push(numbers[i]);
   }
  }
  console.log(empty);
}

console.log(evens([2,4,3,5,7,8,12,33]))

// "We built this city"
function Athlete (name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// Defining functions, loops, control flow, and some of the javascript methods.
// What are constructor functions?
// Constructor functions create a new object with a certain set of properties and methods.
// How are constructors different from Ruby classes (in your research)?
// So far, it seems very similar.

