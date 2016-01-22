// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
myVar = 7
console.log(myVar * 2)

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a triangle
var result = '#'
var counter = 1

while (counter < 8) {
	console.log(result);
	result += '#'
	counter++
}

// FizzBuzz

for  (var i = 1; i <=100; i++) {
	if (i % 3 === 0 && i % 5 ===0) {
		console.log('FizzBuzz');
	}
	else if (i % 3 === 0) {
		console.log('Fizz');
	}
	else if (i % 5 === 0) {
		console.log('Buzz')
	}
	else {
		console.log(i);
	}
}


// Chess Board
var row = "# # # #"
var size = 8
for (var i = 1; i <= size; i++) {
	if (i % 2 === 0) {
		console.log(row);
	}
	else {
		console.log(" " + row);
	}
}

// Functions
// Complete the `minimum` exercise.

function min (num1,num2) {
	if (num1 < num2) {
		return num1
	} 
	else {
		return num2
	}
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
    name: "Lydia",
    age: 26,
    favFood: ["bacon", "chocolate", "avocadoes",
    quirk: "I have a banana suit"]
}


// Reflection questions:
// Introduction 
	// Did you learn anything new about JavaScript or programming in general?
		// I learned that ECMAScript is equivalent to JavaScript. 
	// Are there any concepts you feel uncomfortable with?
		// So far, there aren't any concepts that I feel too uncomfortable with!

// Chapter 1	
	// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
		// Similarities between JavaScript and Ruby syntax include (1) type of data including numbers, strings, and booleans; and (2) binary operators. Differences include (1) Javascript uses type coercion, which changes the type of data to fit the situation, and (2) the is exactly equal operator is three equal signs in js; it's two in ruby.

// Chapter 2
	// What is an expression?
		// An expression is a fragment of code that produces a value, such as '2 * 2'
	// What is the purpose of semicolons in JavaScript? Are they always required?
		// Semi-colons are javascript's delimiter. JS doesn't recognize carriage returns, so if you don't use a semicolon, JS will keep running the code thinking it's on one line. Semi-colons aren't always required, but they are most the time. 
	// What causes a variable to return undefined?
		// Defining a variable without a value. 
	// Write your own variable and do something to it in the eloquent.js file.
		// Done.
	// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
		// console.log prints to the console (more specifically, it 'logs' whatever is the parenthesis). It is similar to the print function in Ruby.
	// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
		// userFood = prompt('What is your favorite food?')
		// console.log('Hey, that is my favorite food, too!')
	// Describe while and for loops
		// While loops continue running a block of code while a condition is met. For loops do the same thing but the syntax is more streamlined. 
	// What other similarities or differences between Ruby and JavaScript did you notice in this section?
		// The basic structure of all the loops and the if/else control flow are the same. 
	// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
		// Done.
// Chapter 3
	// What are the differences between local and global variables in JavaScript?
		// Global variables can be accessed anywhere in js file. Local variables can only be accessed within the function or block in which they are created. 
	// When should you use functions?
		// 	Use functions when you want to reduce repetition. 
	// What is a function declaration?
		// A function declaration defines a function. 
	// Complete the minimum exercise in the eloquent.js file.
		// Done.
// Chapter 4
	// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
		// When a dot is used to access a property, it uses that exact variable name to find that information. If you put it in brackets, then it is evaluated before accessing the property. So, if your property doens't have a valid var name, use the brackets.
	// Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.
		// Done.
	// What is a JavaScript object with a name and value property similar to in Ruby?
		// It's similar to a hash

