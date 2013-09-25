// defining the variables
// var numberOfChildren = "3";
// var partnersName = "Katie";
// var geographicLocation = "Toronto";
// var jobTitle = "Physics Professor";

//Exercise: Fortune Teller

// defining the function
function fortuneTeller(numberOfChildren, partnersName, geographicLocation, jobTitle){
	alert("You will be a " + jobTitle + " in " + geographicLocation + ", and married to " + partnersName + " with " + numberOfChildren + " kids.")

};


// calling the function
// fortuneTeller(var1, var2, var3, var4);

fortuneTeller(4, "Brian", "London", "CTO");
// console.log;

//Exercise: The Age Calculator

function theAgeCalculator(birthYear){
	var currentTime = new Date();
	var year = currentTime.getFullYear();
	var age = year - birthYear;
	var age2 = year - birthYear - 1;
	alert("Your age is: " + age2 + " or " + age)
};

theAgeCalculator(1991);

// Exercise: The Lifetime Supply Calculator

function calculateSupply(currentAge, estimatedAmountPerDay){
	var maximumAge = 90;
	totalAge = maximumAge - currentAge;
	totaldays = totalAge * 365;
	totalCost = totaldays * estimatedAmountPerDay;
	alert("You will spend $" + totalCost + " on your favourite food")
	
}

calculateSupply(22, 90);

// function area(radius) {
// 	area = (Math.PI)*radius^2;
// 	alert("The area is: " area)
// }


// function calcCircumference(radius) {
// 	circumference = 2*(Math.PI)*radius;
// 	alert("The circumference is: " + circumference)
// }

// area(4);
// calcCircumference(4);


// // Exercise 4: Temperature Converter

function celsiusToFarenheit(celsius) {
	var convertCelsius = celsius * 9/5 + 32;
	alert("The temperature is " + celsius + " celsius ")
};

function farenheitToCelsius(farenheit) {
	var convertFarenheit = (farenheit - 32) * 5/9;
	alert("The temperature is " + farenheit + " farenheit ")
};

celsiusToFarenheit(32);
farenheitToCelsius(82);








