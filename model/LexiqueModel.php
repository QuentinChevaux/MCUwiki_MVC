<?php

    namespace model;

use PDO_custom;

    class LexiqueModel {

        static function fetchAllLexicon() {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM lexique ORDER BY titre ASC');

            $requete -> execute();

            return $requete -> fetchAll();

        }

        static function fetchLexiconByLetter($letter) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM lexique WHERE titre LIKE :lettre ORDER BY titre ASC');

            $requete -> execute([ ':lettre' => $letter . '%' ]);

            return $requete -> fetchAll();

        }

    }

?>