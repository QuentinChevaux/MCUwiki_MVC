<?php

    namespace controleur;

    use model\LexiqueModel;

    class LexiqueControleur extends BaseControleur {

        public function onload() {

            $this -> affichage([], 'lexique');

        }

        public function all() {

            $lexique_all = LexiqueModel::fetchAllLexicon();

            $parametres = compact('lexique_all');

            $this -> affichage($parametres, 'lexique');

        }

        public function lettre($parametre) {

            $lexique_by_letter = LexiqueModel::fetchLexiconByLetter($parametre);

            if($lexique_by_letter != null) {

                $parametres = compact('lexique_by_letter');

            } else {

                $parametres = compact('parametre');

            }

            $this -> affichage($parametres, 'lexique');

        }

    }
