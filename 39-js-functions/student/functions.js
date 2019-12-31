// Basics

// Write a function that takes someone's order

// Function Declaration

function takeOrder(order) {
  console.log("Received order for " + order);
  return order;
}

// Call the function

takeOrder("pizza");

//Function Expression

const sayHello = function() {
  console.log("Hello Javascript!");
};

sayHello();

// Questions:

// Can we assign a function to a variable?

myFunction = takeOrder;

// What happens if I reference the variable that contains the function?

// Can I call the function using normal function call syntax (with round brackets)?
