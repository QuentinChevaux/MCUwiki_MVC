<?php 

    $title = 'Page Film';

    include './vue/common/header.php';

foreach($movie as $film) {
    ?>

        <h2><?= $film['titre'] ?></h2>

<?php

}

?>