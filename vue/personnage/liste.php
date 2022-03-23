<?php

    $title = 'Page Personnage';

    include './vue/common/header.php';

    $_SESSION['lien'] = $_SERVER['REQUEST_URI'];

?>

<section>

    
    <?php

        foreach($listePersonnageParOeuvre as $personnageParOeuvre) {
    
        ?>

                <div class="movie_div_page_personnage">

                    <div>

                        <h2 class="page_perso_titre_media"><?= $personnageParOeuvre[0]['titre'] ?></h2>

                    </div>

                        <div class="flex_center">

                        <?php

                        foreach($personnageParOeuvre as $personnage) {

                        ?>

                        <a href="<?= Config::AFFICHER_PERSONNAGE . $personnage[0] ?>" class="card_personnage_link">

                            <div class="personnage_thumbnail_margin">

                                <div class="personnage_thumbnail">

                                    <!-- taille Image : 200 x 280 -->
                                    <img width="200px" height="280" src='/mcuwiki_mvc/assets/image/personnage/<?= $personnage['image_personnage'] ?>' />

                                    <h2 class="page_perso_nom_personnage"><?= $personnage['nom'] ?></h2>

                                </div>

                            </div>

                        </a>

        <?php

                }

        ?>

                        </div>

                </div>

        <?php

            }
     
        ?>

</section>