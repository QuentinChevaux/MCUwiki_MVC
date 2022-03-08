<?php

    namespace controleur;

    class BaseControleur {

        public function affichage($parametres = [], $vue) {

            extract($parametres);

            include 'vue/' . strtolower(substr(get_class($this), 11, -10)) . '/' . $vue . '.php';

        }

    }

?>