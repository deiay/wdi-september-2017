// First-order functions

var after = function() {
  console.log("this is the after function");
};

var before = function() {
  console.log("this is the before function");
};

var waiting = function() {
  console.log("waiting...");
};

before();

setTimeout(waiting, 5000);

after();
