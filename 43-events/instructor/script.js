var clickBait = document.querySelector("#click-bait");

clickBait.addEventListener("click", function(eventObject) {
  eventObject.preventDefault();
  window.alert("#click-bait was clicked!");
});

var secondLevel = document.querySelector("#second-level");

function secondLevelEventHandler(e) {
  e.stopPropagation();
  window.alert("#second-level received a click!");
}

secondLevel.addEventListener("click", secondLevelEventHandler);

var firstLevel = document.querySelector("#first-level");

var firstLevelEventHandler = function() {
  window.alert("#first-level received a click!");
};

firstLevel.addEventListener("click", firstLevelEventHandler);

window.addEventListener("keyup", function(e) {
  var keypressed = document.querySelector(".keypressed");
  keypressed.innerHTML = e.which;
});
