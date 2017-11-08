// Callbacks

var makeBurger = function() {
  return "Making a burger...";
};

var makePizza = function() {
  return "Making a pizza...";
};

console.log(makeBurger()); // "Making a burger..."
console.log(makeBurger);

function chef(orderFunction) {
  return orderFunction();
}

console.log( chef(makeBurger) );
console.log( chef(makePizza) );

function muliplierBy(multiple) {
  var newFunction = function(input) {
    return input * multiple;
  };

  return newFunction;
}

var byFive = muliplierBy(5);

console.log( byFive );

// function byFive(input) {
//   return input * 5;
// }

console.log( byFive(100) );
