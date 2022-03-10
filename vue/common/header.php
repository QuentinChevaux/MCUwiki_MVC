<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title> <?= $title ?> </title>

    <link rel="stylesheet" href="/mcuwiki_mvc/assets/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" defer></script>

</head>

<body>

    <header>

        <nav>
    
            <ul class="flex_center">
    
                <li><a href="<?= Config::INDEX ?>">Home</a></li>
    
                <li><a href="./lexique.php">Lexique</a></li>
    
                <li><a href="./films.php">Films</a></li>
    
                <li><a href="./series.php">Series</a></li>
    
            </ul>
    
        </nav>
    
        <a href="<?= Config::INDEX ?>" class="header_title"> <h1>MCUwiki</h1> </a>

        <?php 

            if(($_SERVER['REQUEST_URI'] == Config::INDEX)) {
                ?>

                    <h2 class="header_description">Bienvenu sur MCUwiki le Site qui recense tous les Films / Series de Marvel, vous pourrez y retrouver la liste complete ordonnée <br />
                                                    de tous les Films Marvel, la liste de tous les Personnages et bien plus encore !
                    </h2>

        <?php

            }

        ?>
                
    </header>