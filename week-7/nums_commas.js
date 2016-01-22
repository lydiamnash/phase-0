// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Pete Strat.

// Pseudocode
// Create a function that accepts an integer
  // Convert the integer to a string
  // IF the string is less than 4 digits, then return the string
  // Insert a comma every 4 indexes from the end


// Initial Solution

// function separateComma(integer) {
//   var integerArray = integer.toString().split('')
//   //console.log(integerArray);
//   var length = integerArray.length
//   // console.log(length);
  
//   if (length < 4) {
//     console.log(integer);
//     return integer
//   }
//   else  {
//     for (var i = -3; i > (-1 *length); i-=4) {
//       integerArray.splice(i,0,",");
//       length += 1;   
//     }
//    integerArray =  integerArray.join('');
//     console.log(integerArray)
//     return integerArray
//   }
// }



// Refactored Solution
function separateComma(integer) {
  var integerArray = integer.toString().split('');
  var length = integerArray.length;

  if (length < 4) {
    return integer;
  }
  else  {
    for (var i = -3; i > (-1 *length); i-=4) {
      integerArray.splice(i,0,",");
      length += 1;   
    }
    
    integerArray =  integerArray.join('');
    return integerArray;
  }
}


// We also found this method, which adds commas to numbers!
// function separateComma(integer) {
//   integer = integer.toLocaleString();
//   return integer;
// }




// Your Own Tests (OPTIONAL)
separateComma(100)
separateComma(1000)
separateComma(10000)
separateComma(100000)



// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// The approach was similar in JavaScript which made me realize how similar the two languages are!

// What did you learn about iterating over arrays in JavaScript?
// We used a for loop to iterate over the array. At first, we kept getting errors because we didn't put -1 * length in parenthesis, so I learned that parenthesis should be used in the for loop to ensure it runs!

// What was different about solving this problem in JavaScript?
// It was really, really similar. The only thing that was really different was the way that the for loop is structured.

// What built-in methods did you find to incorporate in your refactored solution?
// We used split, splice, length, and join. We also found that there is a built in Javascript method just for adding commas into numbers :)
