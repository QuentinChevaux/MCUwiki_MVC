<?php

    $title = 'Admin Lexique Ajouter';

    include './vue/common/header_admin.php';

?>

    <form action="" method="POST" class="mt-5" id="lexiqueform">

        <input type="hidden" name="token" value="<?= $token ?>">

        <div class="w-50 mx-auto pt-5">

            <h2 class="text-center">Ajouter une Nouvelle Définition au Lexique</h2>

            <div class="form-floating mt-4">

                <input type="text" name="titre" class="form-control" required />
                <label for="titre" class="form-label">Titre :</label>

            </div>

            <div class="form-group">
            
                <label for="definition" class="form-label mt-4">Definition : </label>
                <textarea name="definition" rows="6" class="form-control" required></textarea>

            </div>

            <div>

                <input type="submit" name="valider" class="btn btn-dark w-100 mt-4" value="Valider"/>

            </div>

        </div>

    </form>

    
    <div class="confirmation_text">
        
    <?php

        if(isset($_SESSION['lexicon_success'])) {

    ?>

            <div class="search_title_father mt-3 select_none">

                <div class="search_title">

                    <h2 class="confirmmessage"> <?= $_SESSION['lexicon_success'] ?> </h2>

                </div>

            </div>

            <script>
                                    
                setTimeout(function(){
                    $('.search_title').slideToggle();
                    $('.search_title_father').slideToggle();
                }, 5000); 

            </script>

    <?php

            unset($_SESSION['lexicon_success']);

        }

    ?> 

    </div>

<div class="mt-5 w-50 mx-auto text-center" id="lexique_button">
    
    <button type='button' class='btn btn-dark' onclick="window.location.href='<?= Config::LEXIQUE_ADMIN_SUPPRIMER ?>'">Afficher Page Supprimer Lexique</button>

</div>