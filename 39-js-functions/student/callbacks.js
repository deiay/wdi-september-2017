// Callbacks

var makeBurger = function() {
  return "Making a Burger...";
};

var makePizza = function() {
  return "Making a pizza...";
};

console.log(1, makeBurger()); // "Making a Buger"
console.log(2, makeBurger); // Prints the function reference

function chef(orderFunction) {
  return orderFunction();
}

console.log(3, chef(makeBurger));
console.log(4, chef(makePizza));

function multiplier(multiple) {
  const myNewFunction = function(input) {
    return input * multiple;
  };

  return myNewFunction;
}

console.log(5, multiplier(5)(100));
