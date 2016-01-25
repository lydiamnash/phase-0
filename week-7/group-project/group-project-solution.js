// Hey guys! Here is the Person 1 and Person 2 parts:
/* User Stories
1. As a user, I want the get the sum for a list of numbers.
2. As a user, I want to get the average for a list of numbers.
3. As a user, I want to find middle number in a list of numbers.
*/

// PSUEDOCODE
// test for sum
// 1. Declare a function called “sum” which has an array as its parameter.
// 2. Create a variable called “total” and assign number 0 as its starting value.
// 3. Loop through the input array and add each number to the variable “total”.
// 4. Return variable “total”


function sum(array) {
  var total = 0;
  for (var i = 0; i < array.length; i++){
    total = total + array[i];
  }
  return total;
}

// test for mean
// 1. Declare a function called “mean” which has an array as its parameter.
// 2. Create a variable called “total” and assign number 0 as its starting value.
// 3. Loop through the input array and add each number to the variable “total”.
// 4. Retrieve the length of the array and have the total divided by it and then assign it into a new variable called “result”.
// 5. Return the “result”.

function mean(array) {
  var total = 0;
  for (var i = 0; i < array.length; i++){
    total = total + array[i];
  }
  var result = total/(array.length);
  return result;
}


// test for median
// 1. Declare a function called “median” which has an array as its parameter.
// 2. Retrieve the length of the array.
// 3. Sort the array from small to large (If the array is not in order)
// 4. Have the length of the array plus 1 then divided by 2 to retrieve the position of the median.
// 5. For an odd number items array, the median should be the middle number. For an even number items array, the median should be the average of the middle 2 number.


function median(array) {
  // Define function for numerical sorting
  function sortNumber(a,b) {
    return a - b;
  }
  // Begin median calculation
  var len = array.length;
  var array_sort = array.sort(sortNumber);
  // if length is EVEN
  if (array.length % 2 === 0) {
    var median1 = (len - 2)/2;
    var median2 = (len)/2;
    var median_even = (array_sort[median1] + array_sort[median2]) / 2;
    return median_even;
  }
  // if length is ODD
  else {
    var median = (len - 1)/2;
    return array_sort[median];
  }
}

/***************************
DRIVER CODE
***************************/

var this_array = [2,4,6,8];
console.log(sum(this_array));
console.log(mean(this_array));
console.log(median(this_array));


