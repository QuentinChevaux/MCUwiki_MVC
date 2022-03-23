<?php

    namespace model;

    use PDO_custom;

    class MediaModel {

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

        static function fetchAllMedia() {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM oeuvre
                                              LEFT JOIN film ON oeuvre.id = film.id
                                              LEFT JOIN serie ON oeuvre.id = serie.id');

            $requete -> execute();
            
            return $requete -> fetchAll();

        }

        static function fetchMediaBySlug($slug) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM oeuvre 
                                              LEFT JOIN film ON oeuvre.id = film.id 
                                              LEFT JOIN serie ON oeuvre.id = serie.id
                                              WHERE `slug` = ?');

            $requete -> execute([ $slug ]);

            return $requete -> fetch();

        }

        static function fetchFilmLike($text) {

            $connexion= PDO_custom::getInstance();

            $requete = $connexion -> prepare("SELECT * FROM oeuvre JOIN film ON oeuvre.id = film.id WHERE titre LIKE :requete ");

            $requete -> execute([ ':requete' => '%' . $text . '%' ]);

            return $requete -> fetchAll();

        }

        static function fetchSerieLike($text) {

            $connexion= PDO_custom::getInstance();

            $requete = $connexion -> prepare("SELECT * FROM oeuvre JOIN serie ON oeuvre.id = serie.id WHERE titre LIKE :requete ");

            $requete -> execute([ ':requete' => '%' . $text . '%' ]);

            return $requete -> fetchAll();

        }

        static function fetchPersonnageByMedia($id) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM personnage_oeuvre 
                                              LEFT JOIN personnage ON id = id_personnage
                                              WHERE id_oeuvre = ?');

            $requete -> execute([ $id ]);

            return $requete -> fetchAll();

        }

    }

?>