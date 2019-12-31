var clickBait = document.querySelector("#click-bait");

clickBait.addEventListener("click", eventObject => {
  // window.alert('click bait was clicked')
  console.log("#click-bait was clicked");
  eventObject.preventDefault();
});

var secondLevel = document.querySelector("#second-level");

function secondLevelEventHandler(e) {
  console.log("#second-level received a click");
  e.stopPropagation();
}

secondLevel.addEventListener("click", secondLevelEventHandler);

var firstLevel = document.querySelector("#first-level");

var firstLevelEventHandler = () => console.log("#first-level was clicked");

firstLevel.addEventListener("click", firstLevelEventHandler);

window.addEventListener("keyup", e => {
  const keypressed = document.querySelector(".keypressed");
  keypressed.innerHTML = e.which;
});
