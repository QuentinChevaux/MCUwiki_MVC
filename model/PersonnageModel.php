<?php

    namespace model;

    use PDO_custom;

    class PersonnageModel {

        static function fetchAllPersonnageJoinOeuvre() {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM personnage LEFT JOIN personnage_oeuvre ON personnage.id = personnage_oeuvre.id_personnage ORDER BY id_oeuvre ASC');

            $requete -> execute();

            return $requete -> fetchAll();

        }

    }

?>