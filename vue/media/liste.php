<!-- Affichage de tous les Films / Series pour l'index -->

<?php

    $title = 'MCUwiki';

    include './vue/common/header.php';

?>

<section class="movie_wrapper">

    <?php 
        
        if(isset($_SESSION['access_denied'])) {
            
    ?>
        <div class="access_denied_father select_none">

            <div class="access_denied">

                <h2><?= $_SESSION['access_denied'] ?></h2>

            </div>
            
        </div>

        <script>
                
            setTimeout(function(){
                $('.access_denied').slideToggle();
                $('.access_denied_father').slideToggle();
            }, 5000);            

        </script>

    <?php 
                    
        }

        unset($_SESSION['access_denied']);
                        
    ?>

    <div class="watcher">

        <div>

            <div class="sort_button_div">

                <h2 class="select_none">Choissisez comment vous voulez triez les Medias: </h2>

                    <button onclick='window.location.href="<?= Config::SORT_CHRONOLOGIE ?>"'>Ordre Chronologique</button>

                    <button onclick='window.location.href="<?= Config::INDEX ?>"'>Date de Sortie</button>

            </div>

            <div class="flex_center">
        
                <?php
                
                    foreach($liste as $media) {

                        $date = new IntlDateFormatter('fr_FR', IntlDateFormatter::LONG, IntlDateFormatter::NONE);
                        $date_fr = $date -> format(strtotime($media['date']));

                ?>

                    <div class="card_margin">

                        <a href="<?= Config::AFFICHER . htmlentities($media['slug']) ?>">

                            <div class='movie_card' style="background-image: url(/MCUwiki_MVC/assets/image/media/<?= htmlentities($media['image']) ?>)">
            
                                <div class="movie_card_content">
            
                                    <h2> <?= htmlentities($media['titre']) ?> </h2>

                                    <div class="savoir_plus">

                                        <img class="card_description_img" src="/MCUwiki_MVC/assets/image/common/arrow.png" alt="">
                                        <p class="card_description">En savoir plus</p>

                                    </div>

                                    <p class="card_date capitalize"> <?= htmlentities($date_fr) ?> </p>
            
                                </div>
                                
                            </div>

                        </a>

                    </div>
        
                <?php 

                }

                ?>

            </div>

        </div>

    </div>

</section>