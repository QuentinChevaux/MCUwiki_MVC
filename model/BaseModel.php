<?php

    namespace model;

use PDO_custom;

    class BaseModel {

        public static function getNomTable() {

            return strtolower( preg_replace( '/([A-Z])/', '_$0' , lcfirst(substr(get_called_class(), 6, -5))));

            // Les parenthèse de l'expression régulière permettent de capturer ce que l'on veux et on l'appelle grace a $n (n étant l'index)

        }

        public static function findAll() {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM ' . self::getNomTable());

            $requete -> execute();

            return $requete -> fetchAll();

        }

        public static function findById($id) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM ' . self::getNomTable() . ' WHERE id = ?');

            $requete -> execute([$id]);

            return $requete -> fetch();

        }

        public static function deleteById($id) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('DELETE FROM ' . self::getNomTable() . ' WHERE id = ?'); // self = la class ou on se situe actuellement

            return $requete -> execute([$id]);

        }

    }

?>