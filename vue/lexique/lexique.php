<?php

$title = 'Page Lexique';

include './vue/common/header.php';

$alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

?>

<nav class="lexique_navbar">

    <ul class="flex_center">

        <li><a href="<?= Config::LEXIQUE_ALL ?>">Tous</a></li>

        <?php

        foreach ($alphabet as $abc) {

        ?>

            <li><a href="<?= Config::LEXIQUE_RECHERCHE . $abc ?>"><?= $abc ?></a></li>

        <?php

        }

        ?>

    </ul>

</nav>

    <!-- AFFICHAGE DE TOUS LE LEXIQUE -->

    <?php

        if(isset($lexique_all)) {

            $listeLexiqueGroupByFirstLetter = [];

            foreach ($lexique_all as $lexique) {

                $lettre = substr($lexique['titre'], 0, 1);

                if (!isset($listeLexiqueGroupByFirstLetter[$lettre])) {

                    $listeLexiqueGroupByFirstLetter[$lettre] = [];

                }

                array_push($listeLexiqueGroupByFirstLetter[$lettre], $lexique);
                
            }

            foreach ($listeLexiqueGroupByFirstLetter as $lettre => $lexiqueDeLettre) {

    ?>
                        <h2> - <?= $lettre ?> - </h2>

    <?php

                foreach ($lexiqueDeLettre as $lexique) { 
                    
                    ?>

                        <div>

                            <h2><?= $lexique['titre'] ?></h2>

                            <p><?= $lexique['definition'] ?></p>

                        </div>

    <?php


                }

            }
        
        }

    ?>

    <!-- AFFICHAGE PAR LETTRES -->

    <?php 

        if(isset($lexique_by_letter)) {

            foreach($lexique_by_letter as $lexique) {

            ?>

                <h2> - <?= substr($lexique['titre'], 0, 1) ?> - </h2>

            <div>

                <h2><?= $lexique['titre'] ?></h2>

                <p><?= $lexique['definition'] ?></p>

            </div>

    <?php
            }

        }
        
    ?>