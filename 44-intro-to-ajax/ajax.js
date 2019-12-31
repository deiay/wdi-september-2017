window.addEventListener("DOMContentLoaded", () => {
  // Phase 1: Get Monster Data from API and add to page

  const getMonstersButton = document.getElementById("get_monsters");

  // Add Event Listners

  getMonstersButton.addEventListener("click", () => {
    // Make AJAX request
    const request = $.ajax({
      url: "https://monsters-api.herokuapp.com/monsters",
      method: "GET",
      dataType: "html"
    });

    // Handle Success and failure

    request.done(() => {
      document.body.innerHTML = request.responseText;
    });

    request.fail((request, status, error) => {
      console.log("Request failed", status, error);

      var warningMessage = document.createElement("p");
      warningMessage.innerText = "Whoops, something went wrong";
      warningMessage.style.color = "red";
      document.body.appendChild(warningMessage);
    });
  });

  // Phase 2: Send Monster data to API

  var postMonseterButton = document.getElementById("post_monster");

  postMonseterButton.addEventListener("click", e => {
    e.preventDefault();

    const handleDone = () => {
      console.log("POST REQUEST SUCCEEDED");
    };

    const handleError = () => {
      console.log("POST REQUEST FAILED");
    };

    var request = $.ajax({
      url: "https://monsters-api.herokuapp.com/monsters",
      method: "POST",
      data: {
        monster: {
          name: "Cool Monster",
          home: "London Ontario",
          creepiness: 0
        }
      }
    })
      .done(handleDone)
      .fail(handleError);
  });
});
