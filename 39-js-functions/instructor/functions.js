// Basics

// Write a function that takes someone's order

// Function declaration
function takeOrder(order) {
  console.log("Received order for " + order);
  return order;
}

// Function expression
var takeOrder = function(order) {
  console.log("Hello from function expression!");
};

// Call the function
takeOrder("burger");

takeOrder();

function sayHello() {
  console.log('Hello JavaScript!');
}

sayHello();

// Questions:

// Can we assign a function to a variable?

// What happens if I reference the variable that contains the function?

// Can I call the function using normal function call syntax (with round brackets)?
