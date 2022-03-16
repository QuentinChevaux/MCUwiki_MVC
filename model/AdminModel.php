<?php

    namespace model;

    use PDO_custom;

    class AdminModel {

        static function connexionAdmin($login) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT * FROM user JOIN `admin` ON user.id = `admin`.id WHERE `login` = ?');

            $requete -> execute([ $login ]);

            return $requete -> fetch();

        }

        static function addMedia($titre, $slug, $description, $date, $date_fictive, $image, $tmdb) {

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

                $requete = $connexion -> prepare('INSERT INTO oeuvre (`titre`, `slug`, `description`, `date`, `date_fictive`, `image`, `tmdb`) VALUES (?, ?, ?, ?, ?, ?, ?)');

                $requete -> execute([ $titre, $slug, $description, $date, $last_date_incremented, $image, $tmdb ]);
                
            // Si l'oeuvre n'est pas à la suite on ajoute une date définie par l'utilisateur

            } else {

                $requete = $connexion -> prepare('INSERT INTO oeuvre (`titre`, `slug`, `description`, `date`, `date_fictive`, `image`, `tmdb`) VALUES (?, ?, ?, ?, ?)');
                    
                $requete -> execute([ $titre, $slug, $description, $date, $date_fictive, $image, $tmdb ]);

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

        static function fetchAllMedia() {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('SELECT oeuvre.id, oeuvre.titre, oeuvre.tmdb, oeuvre.streaming_link, film.duree, film.streaming_platform, serie.nbepisode 
                                              FROM oeuvre
                                              LEFT JOIN film ON oeuvre.id = film.id 
                                              LEFT JOIN serie ON oeuvre.id = serie.id');

            $requete -> execute();

            return $requete -> fetchAll();

        }

        static function updateStreamingPlatform($platform, $id) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('UPDATE film SET streaming_platform = ? WHERE id = ?');
        
            $requete -> execute([$platform, $id]);

        }

        static function updateStreamingLink($link, $tmdb) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('UPDATE oeuvre SET streaming_link = ? WHERE tmdb = ?');

            $requete -> execute([$link, $tmdb]);

        }

        static function addLexique($titre, $definition) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('INSERT INTO lexique (`titre`, `definition`) VALUES (?, ?)');

            $requete -> execute([ $titre, $definition ]);

        }

        static function deleteLexique($id) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('DELETE FROM lexique WHERE id = ?');

            $requete -> execute([ $id ]);

        }

        static function addPersonnage($nom, $acteur, $biographie, $image) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('INSERT INTO personnage (nom, acteur, biographie, `image`) VALUES (?, ?, ?, ?)');

            $requete -> execute([ $nom, $acteur, $biographie, $image ]);

        }
        
        static function linkPersonnageWithOeuvre($id_oeuvre, $id_personnage) {

            $connexion = PDO_custom::getInstance();

            $requete = $connexion -> prepare('INSERT INTO personnage_oeuvre (id_oeuvre, id_personnage) VALUES (?, ?)');

            $requete -> execute([ $id_oeuvre, $id_personnage ]);

        }

    }

?>