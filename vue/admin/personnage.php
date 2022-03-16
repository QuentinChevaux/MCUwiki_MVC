<?php 

    $title = 'Admin Personnage';

    include './vue/common/header_admin.php';

?>

<?php

    if(isset($_SESSION['personnage_success'])) {

?>

        <div class="search_title_father mt-3 select_none">

            <div class="search_title">

                <h2 class="confirmmessage"> <?= $_SESSION['personnage_success'] ?> </h2>

            </div>

        </div>

        <script>
                                
            setTimeout(function(){
                $('.search_title').slideToggle();
                $('.search_title_father').slideToggle();
            }, 5000); 

        </script>

<?php

        unset($_SESSION['personnage_success']);

    }

?> 

    <a href="http://www.marvel-cineverse.fr/pages/mcu/encyclopedie/personnages/">Database pour remplir ma bdd</a>

    <form action="" method="POST" enctype='multipart/form-data' id="personnageform" class="mt-5">

        <div class="w-50 mx-auto">

            <div class="form-floating mt-4">
        
                <input type="text" name="nom" class="form-control" required />
                <label for="nom" class="form-label">Nom :</label>
            
            </div>

            <div class="form-floating mt-4">
        
                <input type="text" name="acteur" class="form-control" required />
                <label for="acteur" class="form-label">Joué par :</label>
            
            </div>
        
            <div class="form-group">
                
                <label for="biographie" class="form-label mt-4">Biographie : </label>
                <textarea name="biographie" rows="8" class="form-control" required></textarea>
        
            </div>
            
            <p class="mt-4">Dans quel Oeuvre est le Personnage Présent ?</p>

            <div class="media_display_div form-group">


                <?php

                    foreach($liste_oeuvre as $media) {

                ?>

                        <div class="form-check p-3">

                            <input type="checkbox" name="oeuvre[]" value='<?= $media['id'] ?>'/>
                            <label for="oeuvre">  &nbsp; <?= $media['titre'] ?> </label>

                        </div>

                <?php

                    }

                ?>

            </div>

            <div class="form-group">

                <label for="file" class="form-label mt-4">Image :</label>
                <input class="form-control" type="file" name="image" required/>

            </div>

            <div>
        
                <button type="submit" name="valider" class="btn btn-dark w-100 mt-4 mb-5 dashboard_form_validate_button">Valider</button>
        
            </div>

        </div>

    </form>