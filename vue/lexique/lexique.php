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

                <div class="flex_center select_none">

                    <div class="lettre_lexique">

                        <h2> - <?= htmlentities(ucfirst($lettre)) ?> - </h2>

                    </div>

                </div>

    <?php

                foreach ($lexiqueDeLettre as $lexique) { 
                    
                    ?>

                        <div class="div_definition select_none">
    
                            <h2><?= htmlentities(ucfirst($lexique['titre'])) ?> :</h2>
    
                            <p><?= htmlentities($lexique['definition']) ?></p>
    
                        </div>

    <?php


                }

            }
        
        }

    ?>

    <!-- AFFICHAGE PAR LETTRES -->

    <?php 

        if(isset($lexique_by_letter) && $lexique_by_letter != null) {

            ?>

                <div class="flex_center lettre_lexique select_none">

                    <h2> - <?= htmlentities(ucfirst(substr($lexique_by_letter[0]['titre'], 0, 1))) ?> - </h2>

                </div>

        <?php

            foreach($lexique_by_letter as $lexique) {

            ?>

                <div class="div_definition select_none">

                    <h2><?= htmlentities(ucfirst($lexique['titre'])) ?> :</h2>

                    <p><?= htmlentities($lexique['definition']) ?></p>

                </div>

    <?php
            }

        } else if(isset($parametre)) {

            ?>

                <div class="lexique_no_definition_father flex_center select_none">

                    <div class="lexique_no_definition">
    
                        <h2>Aucune définition disponible pour la Lettre : <span><?= htmlentities($parametre) ?></span></h2>
    
                    </div>

                </div>

        <?php

        }
        
    ?>