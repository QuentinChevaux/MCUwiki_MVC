<?php

    namespace model;

    use PDO_custom;

    class PersonnageModel {

        static function fetchAllPersonnageJoinOeuvre() {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM personnage 
                                              LEFT JOIN personnage_oeuvre ON personnage.id = personnage_oeuvre.id_personnage 
                                              LEFT JOIN oeuvre ON oeuvre.id = personnage_oeuvre.id_oeuvre
                                              ORDER BY id_oeuvre');

            $requete -> execute();

            return $requete -> fetchAll();

        }

        static function fetchPersonnageById($id) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM personnage WHERE id = ?');

            $requete -> execute([ $id ]);

            return $requete -> fetch();

        }

    }

?>