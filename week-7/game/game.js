 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: Pick up pengiun baby and get to the other side of the water
// Goals: Avoid the shark, grab the pengiun baby
// Characters: momma pengiun (player), shark 
// Objects: Momma pengiun aka player (health, position, has baby pengiun), Shark(position)
// Functions: moveUp, moveDown, moveRight, moveLeft

// Pseudocode
// Create a player object
// Add movement methods to the player
// Create conditions that compare the pengiun and shark's positions and properties
// IF the positions match:
//	IF shark suit is off and shark is aggressive, shark eats pengiun
//  IF shark suit is on and shark is not aggressive, pengiun gets away
//  IF shark suit is on and shark is aggressive, shark eats pengiun
// ELSE IF pengiun position matches pengiun baby, rescue and game over
// ELSE IF pengiun position matches shark suit
	// put on shark suit
	// change shark property to not aggressive
// create shark object
// create baby pengiun object

// Initial Code

// var player = {
// 	posX: 10,
// 	posY: 10,
// 	health: 100,
// 	has_baby: false,
// 	shark_suit: false,

// // define methods for player movement
// 	move: function(direction) {
// 		if (direction === "right") {
// 			this.posX += 10;
// 		}
// 		else if (direction === "left") {
// 			this.posX -= 10;
// 		}
// 		else if (direction === "down") {
// 			this.posY -= 10;
// 		}
// 		else if (direction === 'up') {
// 			this.posY += 10;
// 		}

// 		//Display where player is
// 		console.log("Player's position is " + player.posX + "," + player.posY);

// 		//After every move, check if the player is at the same position as the shark
// 		if (player.posX === shark.posX && player.posY === shark.posY && shark.aggressive === true && player.sharkSuit === false){ 
// 			console.log("dun dun");
// 			console.log(".......");
// 			console.log("dun dun");
// 			console.log(".......");
// 			console.log("dun dun dun dun dun DUN!!!!");
// 			console.log("The shark ate you. :(");
// 		}

// 		else if(player.posX === shark.posX && player.posY === shark.posY && shark.aggressive === true && player.sharkSuit === true){ 
// 			console.log("Shark: Hey, I've seen you before! You look like a shark, but smell like a pengiun! I'm going to eat you!");
// 			console.log("The shark eats you, nom nom nom.");
// 		}

// 		else if(player.posX === shark.posX && player.posY === shark.posY && shark.aggressive === false && player.sharkSuit === true){ 
// 			console.log("It looks like your shark suit worked! You ran into the shark but he didn't eat you!");
// 			shark.aggressive = true;
// 		}

// 		else if (player.posX === pengiunBaby.posX && player.posY === pengiunBaby.posY){ 
// 			console.log("You saved the pengiun baby, great job!");
// 			player.has_baby = true;
// 		}

// 		else if (player.posX === sharkSuit.posX && player.posY === sharkSuit.posY) {
// 			console.log("How convenient, you found a shark disguise in the water! You may be able to fool the shark into thinking you aren't a pengiun.")
// 			player.sharkSuit = true;
// 			shark.aggressive = false;
// 		}
// 	}
// };

// var shark = {
// 	health: 100,
// 	aggressive: true, // boolean value determines whether the shark will attack the pengiun upon encounter
// 	posX: 40,
// 	posY: 40
// };

// var pengiunBaby = {
// 	posX: 80,
// 	posY: 60
// };

// var sharkSuit = {
// 	posX: 20,
// 	posY: 20
// };

// player.move('up');
// player.move('right');
// player.move('up');
// player.move('right');
// player.move('up');
// player.move('right');
// player.move('up');
// player.move('down');



// Refactored Code

var player = {
	posX: 10,
	posY: 10,
	health: 100,
	has_baby: false,
	shark_suit: false,

// define methods for player movement
	move: function(direction) {
		if (direction === "right") {
			this.posX += 10;
		}
		else if (direction === "left") {
			this.posX -= 10;
		}
		else if (direction === "down") {
			this.posY -= 10;
		}
		else if (direction === 'up') {
			this.posY += 10;
		}

		//Display where player is
		console.log("Player's position is " + player.posX + "," + player.posY);

		//After every move, check if the player is at the same position as the shark
		if (player.posX === shark.posX && player.posY === shark.posY) {
			if (shark.aggressive === true && player.sharkSuit === false) {
				console.log("dun dun");
				console.log(".......");
				console.log("dun dun");
				console.log(".......");
				console.log("dun dun dun dun dun DUN!!!!");
				console.log("The shark ate you. :(");
			}

			else if (shark.aggressive === true && player.sharkSuit === true) {
				console.log("Shark: Hey, I've seen you before! You look like a shark, but smell like a pengiun! I'm going to eat you!");
				console.log("The shark eats you, nom nom nom.");
			}

			else if (shark.aggressive === false && player.sharkSuit === true) {
				console.log("It looks like your shark suit worked! You ran into the shark but he didn't eat you!");
				shark.aggressive = true;
			}
		}

		else if (player.posX === pengiunBaby.posX && player.posY === pengiunBaby.posY){ 
			console.log("You saved the pengiun baby, great job!");
			player.has_baby = true;
		}

		else if (player.posX === sharkSuit.posX && player.posY === sharkSuit.posY) {
			console.log("How convenient, you found a shark disguise in the water! You may be able to fool the shark into thinking you aren't a pengiun.")
			player.sharkSuit = true;
			shark.aggressive = false;
		}
	}
};

var shark = {
	health: 100,
	aggressive: true, // boolean value determines whether the shark will attack the pengiun upon encounter
	posX: 40,
	posY: 40
};

var pengiunBaby = {
	posX: 80,
	posY: 60
};

var sharkSuit = {
	posX: 20,
	posY: 20
};

player.move('up');
player.move('right');
player.move('up');
player.move('right');
player.move('up');
player.move('right');
player.move('up');
player.move('down');



// Reflection
//
// What was the most difficult part of this challenge?
// The most difficult thing about this challenge was trying to keep things simple and attainable. There were a lot of things I would want to add (such as removing the baby penguin once it has been picked up), but I tried to keep my expectations low to begin with.

// What did you learn about creating objects and functions that interact with one another?
// The move function was new to me. I hadn't seen any syntax that worked like that before. 

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I didn't learn any new buiilt-in methods in this exercise, but I'll be looking into this more as I build onto the game! Very cool exercise :)

// How can you access and manipulate properties of objects?
// By entering the name of the object then a period, then the name of the property, then the new value after an equals sign.
//
//
//
//
//