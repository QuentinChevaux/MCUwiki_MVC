<!-- Affichage de tous les Films / Series pour l'index -->

<?php

    $title = 'MCUwiki';

    include './vue/common/header.php';

?>

<section class="movie_wrapper">

    <div class="watcher">

        <div>

            <div class="sort_button_div">

                <h2>Choissisez comment vous voulez triez les Films : </h2>

                    <button>Ordre Chronologique</button>

                    <button>Date de Sortie</button>

            </div>

            <div class="flex_center">
        
                <?php
                
                    foreach($liste as $media) {

                        // $date = new IntlDateFormatter('fr_FR', IntlDateFormatter::LONG, IntlDateFormatter::NONE);
                        // $date_fr = $date -> format(strtotime($tableau[$i]['date']));

                ?>

                    <div class="card_margin">

                        <a href="<?= Config::AFFICHER . $media['slug'] ?>">

                            <div class='movie_card' style="background-image: url(/MCUwiki_MVC/assets/image/media/<?= $media['image'] ?>)">
            
                                <div class="movie_card_content">
            
                                    <h2> <?= $media['titre'] ?> </h2>

                                    <div class="savoir_plus">

                                        <img class="card_description_img" src="/MCUwiki_MVC/assets/image/common/arrow.png" alt="">
                                        <p class="card_description">En savoir plus</p>

                                    </div>

                                    <!-- <p class="card_date capitalize"> <?= $date_fr ?> </p> -->
            
                                </div>
                                
                            </div>

                        <!-- </a> -->

                    </div>
        
                <?php 

                }

                ?>

            </div>

        </div>

    </div>

</section>