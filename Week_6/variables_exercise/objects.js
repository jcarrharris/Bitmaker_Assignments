// Create an object to hold information on your favorite recipe. 
// It should have properties for title (a string), servings (a number), and ingredients (an array of strings).
// On separate lines (one console.log statement for each), log the recipe information so it looks like:
// Mole
// Serves: 2
// Ingredients:
// cinnamon
// cumin
// cocoa

var recipe = {
	title: "Mole",
	servings: 2,
	ingredients: ["cinnamon", "cumin", "cocoa"]
};


console.log("The recipe title is " + recipe.title);
console.log("There are " + recipe.servings + " servings.");
console.log("The ingredients are " + recipe.ingredients);

// EXERCISE: The Reading List

// Keep track of which books you read and which books you want to read!

// Create an array of objects, where each object describes a book and has properties for the title (a string),
// author (a string), and alreadyRead (a boolean indicating if you read it yet).
// Iterate through the array of books. For each book, log the book title and book author like so:
// "The Hobbit by J.R.R. Tolkien".
// Now use an if/else statement to change the output depending on whether you read it yet or not.
// If you read it, log a string like 'You already read "The Hobbit" by J.R.R. Tolkien',
// and if not, log a string like 'You still need to read "The Lord of the Rings" by J.R.R. Tolkien.'


var book = {
	title: ["1984", "Prisoner of Birth", "Game of Thrones"],
	author:["George Orwell", "Jeffrey Archer", "George Martin"],
	alreadyRead: ["true", "true", "true"]
};

console.log(book.title[0] + " by "+ book.author[0]);
console.log(book.title[1] + " by "+ book.author[1]);
console.log(book.title[2] + " by "+ book.author[2]);

// var alreadyRead = if(book.alreadyRead == true){
// 	console.log("You already read " + book.title[0] + " by "+ book.author[0]);
// 			}
// 			else { 
// 				console.log("You still need to read " + book.title[0] + " by "+ book.author[0]);

// 			}
// };

// EXERCISE: The Movie Database

// It's like IMDB, but much much smaller!

// Create an object to store the following information about your favorite movie:
// title (a string), duration (a number), and stars (an array of strings).
// Create a function to print out the movie information like so: "Puff the Magic Dragon lasts for 30 minutes.
// Stars: Puff, Jackie, Living Sneezes."

//var favouriteMovie = {title:"Shawshank Redemption", duration: 125, stars: "Morgan Freeman"};


// function favoriteMovie(title, duration, stars) {
// 	console.log(title + " lasts for " + duration + " minutes");
//	console.log("Stars: " + stars + ".");
// }

var movie = {title: "Shawshank Redemption", duration: 150, stars: ["Morgan Freeman", "Jennifer Lopez", "Ed Manson"]};

function favoriteMovie(movie) {
	console.log(movie.title + " lasts for " + movie.duration + " minutes," + "Stars: " + movie.stars + ".");
}

favoriteMovie(movie);


