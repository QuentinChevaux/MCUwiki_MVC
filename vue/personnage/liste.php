<?php

    $title = 'Page Personnage';

    include './vue/common/header.php';

?>

<section>

    <div class="flex_center">

        <?php

    /*
        foreach($oeuvre as $media) {

            ?>

                <h2><?= $media['titre'] ?></h2>

        <?php

    */

            foreach($liste as $personnage) {

                ?>

                    <div class="personnage_thumbnail_margin">

                        <div class="personnage_thumbnail">

                            <!-- taille Image : 200 x 280 -->
                            <img width="200px" height="280" src='/mcuwiki_mvc/assets/image/personnage/<?= $personnage['image'] ?>' />

                            <h2><?= $personnage['nom'] ?></h2>

                        </div>

                    </div>

        <?php

            }
        
        // }
    
        ?>

    </div>

</section>