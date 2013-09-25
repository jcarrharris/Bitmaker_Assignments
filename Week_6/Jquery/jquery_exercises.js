// SOLUTIONS GO BELOW EACH EXERCISE

// EXERCISE: Change Background

// Change the background color of '#target' by script. 
// Hint: you can use .css

$(document).ready(function(){
	// $('#target').css ({
	// 	'background-color': 'blue'
	// });


// EXERCISE: Change Parent

//	var title = $('#target').find("span").text("title");

// Change the text in the span, a child of "#target"
// Hint: you can use .text

// EXERCISE: Create Clone

// Create a clone of the span in "#target" and position it under the origin.
// Hint: you can use .clone and .insertAfter

// $('#target span').clone().insertAfter('#target');

// EXERCISE: Use Filter

// Change background color of the second ".target"
// Hint: you can use .eq and .css

// $('.target').eq(2).css("background-color", "blue");

// EXERCISE: Disable Buttons

// Disable the button
// Hint: you will have to select the button and can use .attr

// $('.target button').prop("disabled", "disabled");
// $('.target button').attr("disabled", "disabled");


// EXERCISE: Uncheck CheckBoxes

// Uncheck all checkboxes using jQuery
// Hint: you will have to select the input and can use .removeAttr

// $('.target input').removeAttr("checked", "checked");



// EXERCISE: Change Parent

// Move "#child" from "#parent1" to "#parent2"
// Hint: you can use .appendTo

//$('#parent1').appendTo("#parent2");

// EXERCISE: Select A Option in A Select Box

// Select the second option in the selectbox by script
// Hint: you will have to select the option and can use .eq and .attr

$('#target select:eq(2)').attr("selected","selected");



// EXERCISE: Change Size

// Make "#target" double size
// Hint: you can use .css, .width and .height

// $('#target').css({
// 	'width' = 2
// 	 'height' = 2
// });



// EXERCISE: Empty Elements
// Hint: you can use .empty

// Remove all children and text of "#target"

//$('div.child').empty();
//$('div#target').empty();



// EXERCISE: Delay

// Show Alert with 1 second delay (Use "setTimeout")
// Hint: you can use .setTimeout and alert

// setTimeout(function delay() {
// 	alert('Your site is overdone') {
// 		$(document).fadeIn();}, 2000);
// 		});


// EXERCISE: Count

// Show the number of children in an alert
// Hint: you can use .children, .length and alert or you could use .find, .size and alert. the alert should show 5

// var n = $('#target').children.length;
// alert("There are " + n + " divs");


// EXERCISE: Animate

// Make "#target" double size with animation
// Hint: you can use .animate, .width, and .height


// $('#target').animate({width: '+=200'}, 200);

// EXERCISE: Alternate Color

// Make the list-box alternating. (Make odd options a different color)
// Hint: you can select the option and use .filter and .css

// $('#target .child').filter(":even").css("background-color","red");

// EXERCISE: All But One

// Remove all children of "#target" but h2
// Hint: you can use .children, .not and .remove

// $("#target").children().not("h2").remove();

// EXERCISE: Without Children

// Remove all 'div' whitch has no child elements.
// Hint: you can use .not and .remove. Look closely at what options you can pass .not

$('div:empty').remove(); 



});