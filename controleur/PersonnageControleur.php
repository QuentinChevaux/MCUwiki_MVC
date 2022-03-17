<?php

    namespace controleur;

    use model\MediaModel;
    use model\PersonnageModel;

    class PersonnageControleur extends BaseControleur {

        public function onload() {

            $liste = PersonnageModel::fetchAllPersonnageJoinOeuvre();

            $oeuvre = MediaModel::fetchAllMedia();

            $parametres = compact('liste', 'oeuvre');

            $this -> affichage($parametres, 'liste');

        }

    }

?>