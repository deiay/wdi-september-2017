'use strict';

// Numbers
var number = 5;
var money = 10.3;



// Strings
var sentence = "Hello world!";
var thing = 'my name\'s Daniel';
console.log(sentence + thing)
console.log(sentence[4]);



// Booleans (True and False)

var didItWork = false;



// undefined
var myAnswer = undefined;
var newAnswer;


// null
var nothing = null;


// Arrays
var list = ['shoes', 'mail', false];
var empty = [];




// Object Literals
var person = {
  "name": "Suzan",
  "age": 27,
  location: 'Toronto',
}
console.log(person);
console.log(person['name']);
console.log(person.age);



// If Statement
var everyoneAgrees = true && false
if (2 > 1) {
  console.log("It's true!");
} else if (false) {
  console.log("Other thing was true");
} else {
  console.log("Nothing above was true");
}

console.log('------------------------');

// For Loop
for (var count = 1; count <= 100; count *= 4) {
  console.log(count);
}

var toBuy = ['hat', 'water', 'jeans', 'milk'];

for (var number = 0; number < toBuy.length; number++) {
  var item = toBuy[number];
  console.log(item);
}


// While Loop
var apples = 0
while (apples < 10) {
  console.log(apples);
  apples += 2;
}


console.log('=================');
// Named function
function getMessage() {
  return "Hello!";
}
var result = getMessage();
console.log(result);





// Functions with parameters
function add(number1, number2) {
  return number1 + number2;
}
var bigger = add(5, 3);
console.log(bigger);

add(4);



// Anonymous function
var multiply = function(number1, number2) {
  return number1 * number2;
}
console.log(multiply(3, 5));
console.log(multiply);


// Callback
var planes = ['747', '737', '727']
function planeName(name) {
  console.log("The plane is named " + name + ".");
}
planes.forEach(planeName);

planes.forEach(function(name) {
  console.log("The plane is named " + name + ".");
});



// Scope examples -------------------

var allowed = 'TEST';
function doStuff() {
  var innerStuffVar = "in doStuff";
  ////
  console.log(allowed);
  function inner() {
    ///////
    console.log(allowed);
  }
  // inner()
}
// inner()

doStuff();

function doThings() {
  // console.log(innerStuffVar);
}
doThings();


console.log(add(4));
// Callbacks --------------------------



// forEach callback



// objects - accessing attributes




// objects with functions - basic example




// objects with functions - basic Mars Rover implementation



// More complicated callbacks --------------------------




// asynchronous JS
