<?php 

    class AutoLoader {

        static function start() {

            spl_autoload_register([__CLASS__, 'autoload']);

        }

        static function autoload($nomClass) {

            $fichier = str_replace('\\', '/', $nomClass . '.php');

            if(file_exists($fichier)) {

                include($fichier);

            }

        }

    }

?>