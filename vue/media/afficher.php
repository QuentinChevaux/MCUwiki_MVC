<!-- Affichage Unitaire d'un Media précis pour la page Film ou Serie -->

<?php

    $title = 'Media';

    include './vue/common/header.php';

?>

<div class="flex_center div_presentation_film">

    <div class="div_image">
        
        <div style="background-image: url(/mcuwiki_mvc/assets/image/media/<?= $media['image'] ?>)"></div>
        
    </div>

    <div class="div_texte">

        <h2> <?= $media['titre'] ?> </h2>

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

                    <p class="movie_page_card_duration_text"> Durée du Film : <span><?= $duration_converted ?></span> </p>

            <?php

                } else if($media['nbepisode']) {

                    ?>
        
                    <p class="movie_page_card_duration_text">Nombre D'Épisodes : <span> <?= $media['nbepisode'] ?></span> </p>
                
                <?php

                }
            ?>


            <?php 

                $date = new IntlDateFormatter('fr_FR', IntlDateFormatter::LONG, IntlDateFormatter::NONE);
                $date_fr = $date -> format(strtotime($media['date']));

            ?>

        <p class="movie_page_card_release_text capitalize"> Date de Sortie : <span><?= $date_fr ?></span> </p>

        <p class="movie_page_card_description_text"> <span><?= $media['description'] ?></span> </p>

        <?php 

            if($media['streaming_platform'] && $media['streaming_platform'] != null) {

                if($media['streaming_platform'] == 'disney') {
                ?>
                    <div class="streaming_link_button flex">

                        <div class="align-center">

                            <p class="movie_page_streaming">Disponible sur : </p>

                        </div>

                        <div class="logo_streaming">

                            <a href="<?= $media['streaming_link'] ?>" target='_blank'> <img src="./assets/image/disney+_logo.jpg" alt="Logo disney+" /></a>

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

                            <a href="<?= $media['streaming_link'] ?>" target='_blank'> <img src="./assets/image/netflix_logo.png" alt="Logo Netflix" class="logo_netflix"/></a>

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

                            <a href="<?= $media['streaming_link'] ?>" target='_blank'> <img src="./assets/image/netflix_logo.png" alt="Logo Netflix" class="logo_netflix"/></a>

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

                        <a href="<?= $media['streaming_link'] ?>" target='_blank'> <img src="/mcuwiki_mvc/assets/image/common/disney+_logo.jpg" alt="Logo disney+" /></a>

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



