// Create a grocery list

// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

// Pseudocode

// define an empty object as the grocery list
// create function that accepts item and quantity and adds it to the object
// create a function that accepts item and deletes it from object
// create a function that accepts item and new quantity and updates the item's qty in list
// create function that uses a loop to print list on line breaks



// Initial Solution

var groceryList = {};

function addItem(item,quantity) {
  groceryList[item] = quantity;
};

function deleteItem(item) {
  delete groceryList[item];
};

function changeQuantity(item,quantity) {
  if (groceryList.hasOwnProperty(item)) {
    groceryList[item] = quantity;
  };
};

function printList(list) {
  for (var item in list) {
    console.log(item + ': ' + list[item]);
  };
};


// driver code
addItem("dog food",7);
addItem("oranges",2);
addItem("pears",3);
deleteItem("oranges");
changeQuantity("dog food",1);
printList(groceryList);

// Refactored Solution -- REFACTORED as I went...



// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// manipulating objects

// What was the most difficult part of this challenge?
// printing it nicely

// Did an array or object make more sense to use and why?
// Object because need item and value


