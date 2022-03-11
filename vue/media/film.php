<?php 

    $title = 'Page Film';

    include './vue/common/header.php';

?>

    <form action="" method="POST">

        <div class="flex_center search_div select_none">

            <input type="text" name="search" placeholder="Chercher un Film..." autofocus/>

            <input type="submit" name="valider" value="Rechercher &#128269;" />

        </div>

    </form>

    <?php

        if(isset($_POST['valider'])) {

            if(isset($movie) && $movie != null) {

            ?>

                <div class="search_title_father select_none">

                <div class="search_title">

                    <h2>Résultat pour : ' <?= $_POST['search'] ?> '</h2>

                </div>

                </div>

                <div class="search_result_div">

                    <div class="flex_center">
                
                        <?php
                
                            foreach($movie as $film) {

                                $date = new IntlDateFormatter('fr_FR', IntlDateFormatter::LONG, IntlDateFormatter::NONE);
                                $date_fr = $date -> format(strtotime($film['date']));

                        ?>

                            <div class="card_margin">

                                <a href="<?= Config::AFFICHER . $film['slug'] ?>">

                                    <div class='movie_card' style="background-image: url(/MCUwiki_MVC/assets/image/media/<?= $film['image'] ?>)">
            
                                        <div class="movie_card_content">
            
                                            <h2> <?= $film['titre'] ?> </h2>

                                            <div class="savoir_plus">

                                                <img class="card_description_img" src="/MCUwiki_MVC/assets/image/common/arrow.png" alt="">
                                                <p class="card_description">En savoir plus</p>

                                            </div>

                                            <p class="card_date capitalize"> <?= $date_fr ?> </p>
            
                                        </div>
                                
                                    </div>

                                </a>

                            </div>

                        <?php 

                            }

                        ?>

                    </div>

                </div>

        <?php
                
            } else {
                ?>

                <div class="search_result_none_father select_none">

                    <div class="search_result_none">
    
                        <h2>Aucun Résultat pour : '<?= $_POST['search'] ?>'</h2>
    
                    </div>

                </div>

        <?php

            }

        }

    ?>


