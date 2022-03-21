<?php

    $title = 'Dashboard Admin';

    include './vue/common/header_admin.php';

?>

    <div class="adminbutton mt-5">

        <button type='button' class='btn btn-dark' onclick='showMovieForm()'>Ajouter un Film</button>

        <button type='button' class='btn btn-dark' onclick='showSerieForm()'>Ajouter une Serie</button>

    </div>

    <div class='confirmation_text'>

            <?php

                if(isset($_SESSION['error_upload'])) {

            ?>

                <div class="search_title_father mt-3 select_none">

                    <div class="search_title">

                        <h2 class="errormessage"> <?= $_SESSION['error_upload'] ?> </h2>

                    </div>

                </div>

                <script>
                                        
                    setTimeout(function(){
                        $('.search_title').slideToggle();
                        $('.search_title_father').slideToggle();
                    }, 5000); 

                </script>

            <?php

                unset($_SESSION['error_upload']);

            }

            if(isset($_SESSION['movie_success'])) {

            ?>

            <div class="search_title_father mt-3 select_none">

                <div class="search_title">

                    <h2 class="errormessage"> <?= $_SESSION['movie_success'] ?> </h2>

                </div>

            </div>

            <script>
                                    
                setTimeout(function(){
                    $('.search_title').slideToggle();
                    $('.search_title_father').slideToggle();
                }, 5000); 

            </script>

            <?php

            unset($_SESSION['movie_success']);

            }

            if(isset($_SESSION['serie_success'])) {

            ?>

            <div class="search_title_father mt-3 select_none">

                <div class="search_title">

                    <h2 class="errormessage"> <?= $_SESSION['serie_success'] ?> </h2>

                </div>

            </div>

            <script>
                                    
                setTimeout(function(){
                    $('.search_title').slideToggle();
                    $('.search_title_father').slideToggle();
                }, 5000); 

            </script>

            <?php

            unset($_SESSION['serie_success']);

            }

            ?>

    </div>

    <!-- MOVIE FORM -->

    <form action="" method="POST" enctype='multipart/form-data' id="movieform" class="mt-3">

        <input type="hidden" name='token' value="<?= $token ?>">

        <div class="w-50 mx-auto">

            <div class="text-end">
                
                <button type="button" class="btn-close" onclick="closeMovieForm()"></button>

            </div>

            <div class="form-floating mt-4">
        
                <input type="text" name="titre" class="form-control" required />
                <label for="titre" class="form-label">Titre :</label>
            
            </div>
        
            <div class="form-group">
                
                <label for="description" class="form-label mt-4">Description : </label>
                <textarea name="description" rows="6" class="form-control" required></textarea>
        
            </div>

            <div class="form-floating mt-4">
        
                <input type="number" name="duree" class="form-control" required/>
                <label for="duree" class="form-label">Durée (en minutes) :</label>
            
            </div>
        
            <div class="form-floating mt-4">
        
                <input type="date" name="date" class="form-control" required/>
                <label for="date" class="form-label">Date de Sortie :</label>
            
            </div>

            <p class="mt-4">A la suite dans la Chronologie ?</p>

            <div class="btn-group w-100" role="group" aria-label="Basic radio toggle button group">

                <input type="radio" class="btn-check" name="btnradio" id="btn_radio_movie_oui" value='oui' autocomplete="off" checked required>
                <label class="btn btn-outline-primary btn_radio_left" for="btn_radio_movie_oui">Oui</label>

                <input type="radio" class="btn-check" name="btnradio" id="btn_radio_movie_non" value='non' autocomplete="off" required>
                <label class="btn btn-outline-primary btn_radio_right" for="btn_radio_movie_non">Non</label>

            </div>

            <div class="form-floating mt-4" id="film_date_fictive">
        
                <input type="date" name="date_fictive" class="form-control" />
                <label for="ordre" class="form-label">Date Fictive du Film :</label>
            
            </div>

            <div class="form-group">

                <label for="file" class="form-label mt-4">Image :</label>
                <input class="form-control" type="file" name="image" required/>

            </div>

            <div class="form-floating mt-4">
        
                <input type="text" name="tmdb" class="form-control" required />
                <label for="tmdb" class="form-label">Code TMDB :</label>
            
            </div>
        
            <div>
        
                <button type="submit" name="valider_movie" class="btn btn-dark w-100 mt-4 mb-5 dashboard_form_validate_button">Valider</button>
        
            </div>

        </div>

    </form>

    <!-- SERIE FORM -->

    <form action="" method="POST" enctype='multipart/form-data' id="serieform" class="mt-3">

        <input type="hidden" name='token' value="<?= $token ?>">

        <div class="w-50 mx-auto">

            <div class="text-end">
                
                <button type="button" class="btn-close" onclick="closeSerieForm()"></button>

            </div>

            <div class="form-floating mt-4">

                <input type="text" name="titre" class="form-control" required />
                <label for="titre" class="form-label">Titre :</label>

            </div>

            <div class="form-group">
                
                <label for="description" class="form-label mt-4">Description : </label>
                <textarea name="description" rows="6" class="form-control" required></textarea>

            </div>

            <div class="form-floating mt-4">
            
                    <input type="number" name="nbepisode" class="form-control" required/>
                    <label for="nbepisode" class="form-label">Nombre d'Épisodes :</label>
                
            </div>

            <div class="form-floating mt-4">

                <input type="date" name="date" class="form-control" required/>
                <label for="date" class="form-label">Date de Sortie :</label>

            </div>

            <p class="mt-4">A la suite dans la Chronologie ?</p>

                <div class="btn-group radio_button w-100" role="group" aria-label="Basic radio toggle button group">

                    <input type="radio" class="btn-check" name="btnradio" id="btn_radio_serie_oui" value='oui' autocomplete="off" checked required>
                    <label class="btn btn-outline-primary btn_radio_left" for="btn_radio_serie_oui">Oui</label>

                    <input type="radio" class="btn-check" name="btnradio" id="btn_radio_serie_non" value='non' autocomplete="off" required>
                    <label class="btn btn-outline-primary btn_radio_right" for="btn_radio_serie_non">Non</label>

                </div>

                <div class="form-floating mt-4" id="serie_date_fictive">
            
                    <input type="date" name="date_fictive" class="form-control" />
                    <label for="ordre" class="form-label">Date Fictive de la Serie :</label>
                
                </div>

            <div class="form-group">

                <label for="file" class="form-label mt-4">Image :</label>
                <input class="form-control" type="file" name="image" required/>

            </div>

            <div class="form-floating mt-4">
            
                    <input type="text" name="tmdb" class="form-control" required />
                    <label for="tmdb" class="form-label">Code TMDB :</label>
                
            </div>

            <div>

                <button type="submit" name="valider_serie" class="btn btn-dark w-100 mt-4 dashboard_form_validate_button">Valider</button>

            </div>

            </div>

    </form>


</body>
</html>