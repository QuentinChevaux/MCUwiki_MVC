<?php

    namespace controleur;

    use model\MediaModel;
    use model\PersonnageModel;

    class PersonnageControleur extends BaseControleur {

        public function onload() {

            $listePersonnageParOeuvre = [];

            $liste = PersonnageModel::fetchAllPersonnageJoinOeuvre();

            foreach($liste as $personnage) {


                if(!isset($listePersonnageParOeuvre[$personnage['id_oeuvre']])) {

                    $listePersonnageParOeuvre[$personnage['id_oeuvre']] = [];

                }
                
                array_push($listePersonnageParOeuvre[$personnage['id_oeuvre']], $personnage);

            }

            $parametres = compact('listePersonnageParOeuvre', 'liste');

            $this -> affichage($parametres, 'liste');

        }

    }

?>