<!-- Affichage Unitaire d'un Media précis pour la page Film ou Serie -->

<?php

    $title = 'Media';

    include './vue/common/header.php';

    $_SESSION['lien'] = $_SERVER['REQUEST_URI'];
    $_SESSION['nom_media'] = $media['titre'];

?>

<div class="flex_center div_presentation_film select_none">

    <div class="div_image">
        
        <div style="background-image: url(/mcuwiki_mvc/assets/image/media/<?= htmlentities($media['image']) ?>)"></div>
        
    </div>

    <div class="div_texte">

        <h2> <?= htmlentities($media['titre']) ?> </h2>

            <?php

                if($media['duree'] >= 120) {

                    $texte_heure = ' heures';

                }

                else {

                    $texte_heure = ' heure';

                }

                $duration_converted = intdiv($media['duree'], 60) . $texte_heure . " et " . ($media['duree'] % 60) . " minutes.";

                if($media['duree']) {
            ?>

                    <p class="movie_page_card_duration_text"> Durée du Film : <span><?= htmlentities($duration_converted) ?></span> </p>

            <?php

                } else if($media['nbepisode']) {

                    ?>
        
                    <p class="movie_page_card_duration_text">Nombre D'Épisodes : <span> <?= htmlentities($media['nbepisode']) ?></span> </p>
                
                <?php

                }
            ?>


            <?php 

                $date = new IntlDateFormatter('fr_FR', IntlDateFormatter::LONG, IntlDateFormatter::NONE);
                $date_fr = $date -> format(strtotime($media['date']));

            ?>

        <p class="movie_page_card_release_text capitalize"> Date de Sortie : <span><?= htmlentities($date_fr) ?></span> </p>

        <p class="movie_page_card_description_text"> <span><?= htmlentities($media['description']) ?></span> </p>

        <?php 

            if($media['streaming_platform'] && $media['streaming_platform'] != null) {

                if($media['streaming_platform'] == 'disney') {
                ?>
                    <div class="streaming_link_button flex">

                        <div class="align-center">

                            <p class="movie_page_streaming">Disponible sur : </p>

                        </div>

                        <div class="logo_streaming">

                            <a href="<?= htmlentities($media['streaming_link']) ?>" target='_blank'> <img src="<?= Config::LOGO_DISNEY ?>" alt="Logo disney+" /></a>

                        </div>

                    </div>

            <?php

                }

                if($media['streaming_platform'] == 'netflix') {
                    ?>

                    <div class="streaming_link_button flex">

                        <div class="align-center">

                            <p class="movie_page_streaming">Disponible sur : </p>

                        </div>

                        <div class="logo_streaming">

                            <a href="<?= htmlentities($media['streaming_link']) ?>" target='_blank'> <img src="<?= Config::LOGO_NETFLIX ?>" alt="Logo Netflix" class="logo_netflix"/></a>

                        </div>

                    </div>

                <?php

                }

                if($media['streaming_platform'] == 'prime') {
                    ?>

                    <div class="streaming_link_button flex">

                        <div class="align-center">

                            <p class="movie_page_streaming">Disponible sur : </p>

                        </div>

                        <div class="logo_streaming">

                            <a href="<?= htmlentities($media['streaming_link']) ?>" target='_blank'> <img src="<?= Config::LOGO_PRIME ?>" alt="Logo Prime" class="logo_prime"/></a>

                        </div>

                    </div>

                <?php

                }

            } else if($media['nbepisode']) {
                ?>

                    <div class="streaming_link_button flex">

                    <div class="align-center">

                        <p class="movie_page_streaming">Disponible sur : </p>

                    </div>

                    <div class="logo_streaming">

                        <a href="<?= htmlentities($media['streaming_link']) ?>" target='_blank'> <img src="/mcuwiki_mvc/assets/image/common/disney_logo.jpg" alt="Logo disney+" /></a>

                    </div>

                    </div>

                <?php                

            } else {
                ?>

                    <p class="movie_page_streaming">Disponible sur Aucune Platforme de Streaming</p>

            <?php

            }

        ?>

    </div>

</div>

<div class="select_none">

    <div class='liste_personnage_titre'>

        <?php

            if(isset($media['duree'])) {

                ?>

                    <h2>Liste des Personnages présent dans le film</h2>

        <?php

            } else if (isset($media['nbepisode'])) {

                ?>

                    <h2>Liste des Personnages présent dans la Serie</h2>

        <?php

            }

        ?>

    </div>

        <div class="flex_center">

            <?php

                foreach($personnages as $personnage) {

            ?>

                <a href="<?= Config::AFFICHER_PERSONNAGE . $personnage['id'] ?>" class="card_personnage_link">

                    <div class="card_personnage">

                        <div>

                            <h2><?= $personnage['nom'] ?></h2>

                        </div>

                        <div>

                            <img src="/mcuwiki_mvc/assets/image/personnage/<?= $personnage['image_personnage'] ?>" alt="Image Personnage" width="150px" height="200px" />

                        </div>

                    </div>

                </a>

            <?php

                }

            ?>

        </div>

</div>

