<?php

    namespace model;

    use PDO_custom;

    class AdminModel {

        static function connexionAdmin($login) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM user JOIN `admin` ON user.id = admin.id WHERE `login` = ?');

            $requete -> execute([ $login ]);

            return $requete -> fetch();

        }

        static function addMedia($titre, $description, $date, $date_fictive, $image, $tmdb) {

            $connexion = PDO_custom::getInstance();

            // Si l'oeuvre est à la suite chronologique on lui ajoute une date fictive supérieure à
            // celle plus haute de la base de donnée

            if($_POST['btnradio'] == 'oui') {

                    // On récupère la date fictive la plus haute et on ajoute un jour
                    // pour qu'il sois supérieur au niveau de la date fictive

                    $requete = $connexion -> prepare('SELECT * FROM oeuvre WHERE date_fictive = ( SELECT max(date_fictive) FROM oeuvre );');

                    $requete -> execute();
                     
                    $last = $requete -> fetch();
                        
                    $last_date_incremented = date('Y-m-d', strtotime($last['date_fictive'] .  '+2 day'));

                $requete = $connexion -> prepare('INSERT INTO oeuvre (`titre`, `description`, `date`, `date_fictive`, `image`, `tmdb`) VALUES (?, ?, ?, ?, ?, ?)');

                $requete -> execute([ $titre, $description, $date, $last_date_incremented, $image, $tmdb ]);
                
            // Si l'oeuvre n'est pas à la suite on ajoute une date définie par l'utilisateur

            } else {

                $requete = $connexion -> prepare('INSERT INTO oeuvre (`titre`, `description`, `date`, `date_fictive`, `image`, `tmdb`) VALUES (?, ?, ?, ?, ?, ?)');
                    
                $requete -> execute([ $titre, $description, $date, $date_fictive, $image, $tmdb ]);

            }

        }

        static function addMovieDuree($idOeuvre, $duree) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('INSERT INTO film (`id`, `duree`) VALUES (?, ?)');
    
            $requete -> execute([ $idOeuvre, $duree]);

        }

        static function addSerieEpisode($idOeuvre, $nbepisode) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('INSERT INTO serie (`id`, `nbepisode`) VALUES (?, ?)');

            $requete -> execute([ $idOeuvre, $nbepisode ]);

        }

    }

?>