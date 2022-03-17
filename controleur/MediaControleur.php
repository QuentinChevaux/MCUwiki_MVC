<?php

    namespace controleur;

    use model\MediaModel;

    use Config;

    class MediaControleur extends BaseControleur {

        public function onload() {

            $liste = MediaModel::fetchAllMediaOrderByDate();

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

            $media = MediaModel::fetchMediaBySlug($slug);

            if($media) {

                $parametres = compact('media');

                $this -> affichage($parametres, 'afficher');

            } else {

                header('Location: ' . Config::FILM);

            }

        }

        public function film() {

            $movie = '';

            if(isset($_POST['valider'])) {

                $movie = MediaModel::fetchFilmLike($_POST['search']);

            }

            $parametres = compact('movie');

            $this -> affichage($parametres, 'film');

        }

        public function serie() {

            $serie = '';

            if(isset($_POST['valider'])) {

                $serie = MediaModel::fetchSerieLike($_POST['search']);

            }

            $parametres = compact('serie');

            $this -> affichage($parametres, 'serie');

        }

    }

?>