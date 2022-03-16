<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/mcuwiki_mvc/assets/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" defer></script>
    <script src="/mcuwiki_mvc/assets/js/error_404_script.js" defer></script>

    <title> Erreur 404 </title>

</head>
<body>

    <div class="error_404_div select_none">
        
        <canvas id='canvas'></canvas>

            <div class="absolute error_404_absolute">

                <div class="error_404_text">

                    <h2 class="title_404">404</h2>

                    <p class="text_404">Looks like this page was snapped out of reality...</p>

                </div>

                <div class="error_404_link_back">

                    <p class="text_404">... blip back to the <a href='<?= Config::INDEX ?>'>Homepage</a>.</p>

                </div>

            </div>

    </div>

</body>
</html>
