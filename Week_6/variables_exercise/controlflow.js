//Exercise 1

// function greaterNum(number1,number2){
//  if (number1 > number2) {
// 	console.log(number1);
// 	document.write("The number" + number1 + " is greater than " + number2) 
// }
// else {
// 	document.write("The number" + number2 + " is greater than " + number1) 
// }
// };
// greaterNum(25,14);

// Exercise 2

function helloWorld(language) {
	if(language == "en") {
		document.write("Hello World");
	}
	else if(language == "es") {
		document.write("Hola Dia");
	}
	else if(language == "de") {
		document.write("Guten Morgan")
	}
	else { document.write("I don't understand your language");
} };
helloWorld("de");

// Exercise 3

function assignGrade(score) {
	for (charnum= 65; charnum <= 90; charnum ++) {
		var s = String.fromCharCode(charnum);
		document.write(s)
		
		if (s == score) {
			document.write("My score is: " + score);
		}
	}
};

assignGrade("B")

// Exercise 4

// function pluralizer(noun, number) {


// }

