<?php

    namespace controleur;

    use model\MediaModel;

    use Config;

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

            if($media) {

                $parametres = compact('media');

                $this -> affichage($parametres, 'afficher');

            } else {

                $_SESSION['access_denied'] = 'Erreur';

                header('Location: ' . Config::INDEX);

            }

        }

        public function film() {

            $movie = MediaModel::fetchAllMovie();

            $parametres = compact('movie');

            $this -> affichage($parametres, 'film');

        }

    }

?>