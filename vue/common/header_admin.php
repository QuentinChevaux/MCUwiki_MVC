<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?></title>

    <link rel="stylesheet" href="/mcuwiki_mvc/assets/css/style.css">
    <script src="/mcuwiki_mvc/assets/js/admin_script.js" defer></script>

    <link rel="stylesheet" href="/mcuwiki_mvc/assets/css/bootstrap.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</head>

<body>

    <?php

        if(isset($_SESSION['admin'])) {

    ?>

    <header>

            <div class="deconnexion flex_between">

                <a href="<?= Config::INDEX ?>">Page Principale</a>

                <?php
                
                    if($_SERVER['REQUEST_URI'] != Config::STREAMING_AVAILIBILITY) {
                    
                        ?>

                            <a href="<?= Config::STREAMING_AVAILIBILITY ?>">Streaming Availibility</a>
                    
                        <?php 

                    }

                ?>

                <?php
                
                    if($_SERVER['REQUEST_URI'] == Config::STREAMING_AVAILIBILITY) {
                
                        ?>

                            <a href="<?= Config::DASHBOARD ?>">Retour au Dashboard</a>
                
                        <?php 

                    }

                ?>

                <a href="<?= Config::DECONNEXION_ADMIN ?>">Se Deconnecter</a>

            </div>        

    </header>

    <?php

        }

    ?>