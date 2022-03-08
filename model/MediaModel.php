<?php

    namespace model;

    use PDO_custom;

    class MediaModel {

        static function fetchAllMedia() {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM oeuvre LEFT JOIN film ON oeuvre.id = film.id LEFT JOIN serie ON oeuvre.id = serie.id');

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

        // INSERT AVEC FILM OU SERIE

        // FAIRE UN SELECT POUR RECUPERER L'ID DU FILM OU DE LA SERIE

        // FAIRE UN NOUVEL INSERT ET METTRE L'ID DU FILM OU DE LA SERIE PAR RAPPORT A L'ID RECUPERE

    }

?>