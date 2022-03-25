<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title> <?= $title ?> </title>

    <link rel="stylesheet" href="/mcuwiki_mvc/assets/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" defer></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

</head>

<body>
    
    <header>

        <nav class="header_nav">
    
            <ul class="flex_center select_none">
    
                <li><a href="<?= Config::INDEX ?>">Index</a></li>
                
                <li><a href="<?= Config::FILM ?>">Films</a></li>
                
                <li><a href="<?= Config::SERIE ?>">Series</a></li>
                
                <li><a href="<?= Config::PERSONNAGE ?>">Personnages</a></li>

                <li><a href="<?= Config::LEXIQUE ?>">Lexique</a></li>
    
            </ul>
    
        </nav>

        <div class="title_div">

            <h1 class="header_title">MCUwiki</h1>

        </div>
    
        <?php 

            if($_SERVER['REQUEST_URI'] == Config::INDEX || $_SERVER['REQUEST_URI'] == Config::SORT_CHRONOLOGIE ) {
                ?>

                    <h2 class="header_description select_none">Bienvenue sur MCUwiki le Site qui recense tous les Films / Series du MCU, vous pourrez y retrouver la liste complete ordonnée <br />
                                                    de tous les Films Marvel, la liste de tous les Personnages et bien plus encore !
                    </h2>

        <?php

            }

        ?>
                
    </header>