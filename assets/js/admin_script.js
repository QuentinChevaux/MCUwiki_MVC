// SHOW MOVIE OR SERIE FORM

function showMovieForm() {

    if( document.getElementById('serieform').style.display == 'block') {

        alert('Fermez le formulaire Serie');

    }

    else {

        document.getElementById('movieform').style.display = 'block';

    }

}

function closeMovieForm() {

    document.getElementById('movieform').style.display = 'none';

}

function showSerieForm() {

    if( document.getElementById('movieform').style.display == 'block') {

        alert('Fermez le formulaire Film');

    }

    else {

        document.getElementById('serieform').style.display = 'block';

    }

}

function closeSerieForm() {

    document.getElementById('serieform').style.display = 'none';

}

// Display or Hide Suite Chornologique input

    // Movie Form

document.getElementById('btn_radio_movie_non').addEventListener('click', () => {

    if_radio_movie_non();

});

document.getElementById('btn_radio_movie_oui').addEventListener('click', () => {

    if_radio_movie_oui();

});


function if_radio_movie_non() {

    if (document.getElementById('btn_radio_movie_non').checked) {
    
        document.getElementById('film_date_fictive').style.display = 'block';
    
    }

}

function if_radio_movie_oui() {

    if (document.getElementById('btn_radio_movie_oui').checked) {
    
        document.getElementById('film_date_fictive').style.display = 'none';
    
    }

}

    // Serie Form

    document.getElementById('btn_radio_serie_non').addEventListener('click', () => {

        if_radio_serie_non();
    
    });
    
    document.getElementById('btn_radio_serie_oui').addEventListener('click', () => {
    
        if_radio_serie_oui();
    
    });
    
    
    function if_radio_serie_non() {
    
        if (document.getElementById('btn_radio_serie_non').checked) {
        
            document.getElementById('serie_date_fictive').style.display = 'block';
        
        }
    
    }
    
    function if_radio_serie_oui() {
    
        if (document.getElementById('btn_radio_serie_oui').checked) {
        
            document.getElementById('serie_date_fictive').style.display = 'none';
        
        }
    
    }