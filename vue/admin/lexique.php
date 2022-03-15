<?php

    $title = 'Admin Lexique';

    include './vue/common/header_admin.php';

?>

<div id="add_lexicon_div">

    <form action="" method="POST" class="mt-5" id="lexiqueform">

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

            if(isset($_SESSION['lexique_success'])) {

        ?>

            <h2 style='display: block' class="lexique_success mt-5"><?= $_SESSION['lexique_success'] ?></h2>

            <script>

                setTimeout(function(){
                    document.querySelector('.lexique_success').style.display = 'none';
                }, 2000);

            </script>   

        <?php

                unset($_SESSION['lexique_success']);

            }

        ?>

    </div>

</div>

    <button onclick="display_delete_lexicon_form()">Afficher tous les Lexique pour Supprimer</button>


<div id="delete_lexicon_div">

    <h2>Supprimer Lexique</h2>

</div>