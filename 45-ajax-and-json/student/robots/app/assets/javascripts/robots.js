// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

document.addEventListener('DOMContentLoaded', function() {

    const robotContainer = document.getElementById('robot-container')
    const robotDetails = document.querySelector('#robot-details-container')


    robotContainer.addEventListener('click', e => {

        if (e.target.parentNode.tagName === 'A') {

            const robotLink = e.target.parentNode.href;

            e.preventDefault();
            const request = $.ajax({
                url: robotLink,
                method: 'GET',
                dataType: 'json',
            }).done((data) => {
                console.log(data);
                const divTag = document.createElement('div')
                const imgTag = document.createElement('img')
                imgTag.src = "http://robohash.org/" + data.address;
                const pTag = document.createElement('p');
                pTag.innerHTML = data.name;
                divTag.append(imgTag);
                divTag.append(pTag);
                robotDetails.innerHTML = divTag.innerHTML;
                // OR JSX Method
                robotDetails.innerHTML = `<img src="http://robohash.org/` + data.address + `"/><p>` + data.name + `</p>`
                // OR Handlebars Method
                const source = document.getElementById("entry-template").innerHTML;
                const template = Handlebars.compile(source);
                robotDetails.innerHTML = template(data);

            })
        }
    })

    // const robotLinks = document.querySelectorAll('.robot > a')
    //
    // robotLinks.forEach(robot => {
    //     robot.addEventListener('click', e => {
    //         // console.log(robot);
    //        e.preventDefault();
    //
    //        const request = $.ajax({
    //            url: '/robots/1',
    //        })
    //         //debugger;
    //     })
    // }
    // )
});
