// First-order functions

var before = function() {
  console.log('This is the before function');
}

var after = function() {
  console.log('This is the after function');
};

var waiting = function() {
  console.log('Waiting...');
}

before();
setTimeout(waiting, 5000);
after();


var numbers = [1, 2, 3, 4, 5]

var timesFive = numbers.map(function(item) {
  return item * 5;
});

console.log( timesFive );
