<?php

    $title = 'Page Personnage';

    include './vue/common/header.php';

?>

<?php

    if(isset($_SESSION['lien']) && isset($_SESSION['nom_media'])) {

        if(preg_match('/personnage/', $_SESSION['lien'])) {

            ?>

                <p><a href="<?= Config::INDEX ?>">Accueil</a> > <a href="<?= $_SESSION['lien'] ?>">Personnage</a> > <?= $personnage['nom'] ?></p>

    <?php

        } else if(preg_match('/media/', $_SESSION['lien'])) {

            ?>

                <p><a href="<?= Config::INDEX ?>">Accueil</a> > <a href="<?= $_SESSION['lien'] ?>"><?= $_SESSION['nom_media'] ?></a> > <?= $personnage['nom'] ?></p>
        
    <?php

        }

    }

?>

    <div>

        <h2><?= $personnage['nom'] ?></h2>

        <h2><?= $personnage['acteur'] ?></h2>

        <p><?= $personnage['biographie'] ?></p>

    </div>