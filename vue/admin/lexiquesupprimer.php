<?php

    $title = 'Admin Lexique Supprimer';

    include './vue/common/header_admin.php';

?>

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

    <form action=""method='POST' class="mt-2" id="deletelexiconform">

        <input type="hidden" name="token" value="<?= $token ?>">

        <div class="w-50 mx-auto pt-5">

            <h2 class='text-center'>Supprimer une Définition du Lexique</h2>

                <div class="form-floating mt-4">
    
                    <input type="text" name="search_input" class="form-control" required />
                    <label for="search_input" class="form-label">Chercher dans le Lexique :</label>
    
                </div>
    
                <input type="submit" name="search_lexique_submit" value="Rechercher" class="btn btn-dark mt-3"/>

        </div>        

    </form>

    <?php 

        if(isset($lexique_like)) {

            foreach($lexique_like as $lexique) {

            ?>

                <div class="w-75 mx-auto mt-5">

                    <form action="<?= Config::LEXIQUE_ADMIN_SUPPRIMER . $lexique['id'] ?>" method="POST" class="d-flex justify-content-between">

                        <input type="hidden" name="token" value="<?= $token ?>">

                        <div>

                            <div>
            
                                <h2><?= $lexique['titre'] ?></h2>
            
                            </div>
            
                            <div>
            
                                <p><?= $lexique['definition'] ?></p>
            
                            </div>

                        </div>

                        <div>

                            <input type="submit" name="delete_like" class="btn btn-close" value="" class="text-end" />

                        </div>

                    </form>

                </div>
    <?php

            }

        }

    ?>

    <form action="" method="POST" class="mt-3" id="fetchalllexicon">

        <input type="hidden" name="token" value="<?= $token ?>">

        <div class="w-50 mx-auto">

            <input type="submit" name="fetch_all_lexicon" value="Afficher Tous le Lexique" class="btn btn-dark mt-3">

        </div>

    </form>

    <?php 

        if(isset($lexique_all)) {

            foreach($lexique_all as $lexique) {

            ?>

                <div class="w-75 mx-auto mt-5">

                    <form action="<?= Config::LEXIQUE_ADMIN_SUPPRIMER . $lexique['id'] ?>" class="d-flex justify-content-between" method="POST">

                        <input type="hidden" name="token" value="<?= $token ?>">

                        <div>

                            <div>

                                <h2><?= $lexique['titre'] ?></h2>

                            </div>

                            <div>

                                <p><?= $lexique['definition'] ?></p>

                            </div>

                        </div>

                        <div>

                            <input type="submit" name="delete_all" class="btn btn-close" value="" class="text-end" />

                        </div>

                    </form>

                </div>
    <?php

            }

        }

    ?>

<div class="mt-5 w-50 mx-auto text-center" id="lexique_button">
    
    <button type='button' class='btn btn-dark' onclick="window.location.href='<?= Config::LEXIQUE_ADMIN_AJOUTER ?>'">Afficher Page Ajouter Lexique</button>

</div>