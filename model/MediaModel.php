<?php

    namespace model;

    use PDO_custom;

    class MediaModel {

        static function fetchAllMedia() {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM oeuvre');

            $requete -> execute();

            return $requete -> fetchAll();

        }

        static function fetchAllMovie() {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM oeuvre LEFT JOIN film ON oeuvre.id = film.id');
        
            $requete -> execute();

            return $requete -> fetchAll();

        }

        static function fetchAllMediaOrderByChronologie() {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM oeuvre ORDER BY `date_fictive`');

            $requete -> execute();

            return $requete -> fetchAll();

        }

        static function fetchAllMediaOrderByDate() {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM oeuvre ORDER BY `date`');

            $requete -> execute();

            return $requete -> fetchAll();

        }

        static function fetchMediaById($slug) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM oeuvre 
                                              LEFT JOIN film ON oeuvre.id = film.id 
                                              LEFT JOIN serie ON oeuvre.id = serie.id
                                              WHERE `slug` = ?');

            $requete -> execute([ $slug ]);

            return $requete -> fetch();

        }

    }

?>