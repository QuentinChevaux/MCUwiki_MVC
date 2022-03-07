<?php 

    class AutoLoader {

        static function start() {

            spl_autoload_register([__CLASS__, 'autoload']);

        }

        static function autoload($nomClass) {

            if(file_exists($nomClass . ".php")) {

                include($nomClass . ".php");

            }

        }

    }

?>