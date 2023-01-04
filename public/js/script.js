var actors_amount = 1

function addActor() {

    if (actors_amount < 4) {
        const div = document.getElementById('actors-list');

        var id = 'actors-wrapper-'.concat(actors_amount + 1);

        var element = document.getElementById(id);

        console.log(id);

        if (element) {
            var display = element.style.display;

            if (display = 'none') {
                element.style.display = 'block';
            }
        }

        actors_amount = actors_amount + 1;
    }

}
