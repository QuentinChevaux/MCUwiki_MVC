<?php

    namespace controleur;

    use model\MediaModel;

    class MediaControleur extends BaseControleur {

        public function onload() {

            $liste = MediaModel::fetchAllMedia();

            $parametre = compact('liste');

            $this -> affichage($parametre);

        }

    }

?>