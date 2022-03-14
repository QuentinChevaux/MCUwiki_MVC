<?php

    namespace controleur;

    class Erreur404Controleur extends BaseControleur {

        public function onload() {

            $this -> affichage([], 'erreur404');

        }

    }