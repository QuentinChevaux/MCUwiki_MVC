<?php

    namespace controleur;

    use model\MediaModel;

    class MediaControleur extends BaseControleur {

        public function onload() {

            $liste = MediaModel::fetchAllMedia();

            $parametres = compact('liste');

            $this -> affichage($parametres, 'liste');

        }

        public function ordrechronologique() {

            $liste = MediaModel::fetchAllMediaOrderByChronologie();

            $parametres = compact('liste');

            $this -> affichage($parametres, 'liste');

        }

        public function ordredate() {

            $liste = MediaModel::fetchAllMediaOrderByDate();

            $parametres = compact('liste');

            $this -> affichage($parametres, 'liste');

        }

        public function afficher($slug) {

            $media = MediaModel::fetchMediaById($slug);

            $parametres = compact('media');

            $this -> affichage($parametres, 'afficher');

        }

    }

?>