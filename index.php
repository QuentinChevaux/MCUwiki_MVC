<?php

    session_start();

    ob_start();

    if(!isset($_SESSION['token'])) {

        $_SESSION['token'] = bin2hex(random_bytes(32));

    }

    $token = $_SESSION['token'];

    include 'AutoLoader.php';
    AutoLoader::start();

    $chemin = str_replace('parametre=', '', $_GET['chemin']);
    
    $partiechemin = explode("/", $chemin);
    
    if(isset($partiechemin[0]) && $partiechemin[0] != '') {
        
        $nomcontroleur = 'controleur\\' . ucfirst($partiechemin[0]).'Controleur';

    } else {

        $nomcontroleur = 'controleur\\MediaControleur';

    }


    if(isset($partiechemin[1]) && $partiechemin[1] != '') {

        $nomaction = $partiechemin[1];

    } else {

        $nomaction = 'onload';

    }

    if(isset($partiechemin[2]) && $partiechemin[2] != '') {
        
        $parametre = $partiechemin[2];

    } else {

        $parametre = null;

    }

    if(!method_exists($nomcontroleur, $nomaction)) {

        $nomcontroleur = 'controleur\\Erreur404Controleur';
        $nomaction = 'onload';

    }

    $controleur = new $nomcontroleur();

    $controleur -> $nomaction($parametre);
    
    ob_flush();

?>

