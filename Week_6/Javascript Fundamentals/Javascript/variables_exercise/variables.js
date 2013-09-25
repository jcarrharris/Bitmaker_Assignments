var numberOfChildren = "3";
var partnersName = "Katie";
var geographicLocation = "Toronto";
var jobTitle = "Physics Professor";


// Exercise 1: The Fortune Teller
// function(){ 
// 	document.getElementsByClassName('fortune_teller')
alert("You will be a " + jobTitle + " in " + geographicLocation + ", and married to " + partnersName + " with " + numberOfChildren + " kids.");
// }

// Exercise 2: The Age Calculator

var currentYear = 2013;
var birthYear = 1991;

var age = currentYear - birthYear;
var age2 = currentYear - birthYear - 1;
alert("Your age is: " + age2 + " or " + age)

// Exercise 3: The Lifetime Supply Calculator

var currentAge = 22;
var maximumAge = 90;
var estimatedAmountPerDay = 10;

totalAge = maximumAge - currentAge;
totaldays = totalAge * 365;
totalCost = totaldays * estimatedAmountPerDay;

alert("You will spend $" + totalCost + " on your favourite food")


// Exercise 4: The Geometrizer

var radius = 4;
var circumference = 2*(Math.PI)*radius;
var area = (Math.PI)*radius^2;
alert("The circumference is: " + circumference + (". ") + "The area is " + area + (""))

// Exercise 5: The Temperateure Converter

var celsius = 22;
var convertCelsius = celsius * 9/5 + 32;
var farenheit = 82;
var convertFarenheit = (farenheit - 32) * 5/9;
alert("The temperature is " + celsius + " celsius " + "and " + farenheit + " farenheit ") 











