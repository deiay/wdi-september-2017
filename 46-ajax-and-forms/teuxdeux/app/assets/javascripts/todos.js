// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

document.addEventListener('DOMContentLoaded', function() {
  var form = document.querySelector('#new_todo');

  form.addEventListener('submit', function(e) {
    e.preventDefault();

    $.ajax({
      url: form.getAttribute('action'),
      method: form.getAttribute('method'),
      dataType: 'json',
      data: $(form).serialize()
    }).done(function(data) {
      console.log('Response successfully received from server!');

      var contentInput = document.querySelector('#todo_content');
      contentInput.value = "";

      // NOTE: For HTML response
      // $('#todos-list').append(data);

      // NOTE: For JSON response
      var listItem = document.createElement('li');
      listItem.innerHTML = data.content;

      var todosList = document.querySelector('#todos-list');
      todosList.append(listItem);
    });

    console.log('AJAX request sent!');
  })

  // $('#new_todo').on()
});
