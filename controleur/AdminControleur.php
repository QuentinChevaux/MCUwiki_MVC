<?php

    namespace controleur;

    use Config;
    use model\AdminModel;
use PDO_custom;

    class AdminControleur extends BaseControleur {

        public function onload() {

            header('Location: ' . Config::CONNEXION);

        }

        public function connexion() {

            if(!isset($_SESSION['admin'])) {

                $login = '';

                if(isset($_POST['valider'])) {
    
                    $login = AdminModel::connexionAdmin($_POST['login']);

                    if($login) {

                        if(password_verify($_POST['password'], $login['password']) ) {

                            $_SESSION['admin'] = $_POST['login'];

                            header('Location: ' . Config::DASHBOARD);

                        } else {

                            echo '<script>';
                            echo 'alert("Mot de Passe Incorrect !")';
                            echo '</script>';

                        }

                    } else {

                        $_SESSION['access_denied'] = 'Vous n\'avez pas accès à cette Page !';

                        header('Location: ' . Config::INDEX);

                    }
            
                }
    
                $parametres = compact('login');
                
                $this -> affichage($parametres, 'connexion');

            } else {

                header('Location: ' . Config::DASHBOARD);

            }

        }

        public function deconnexion() {

            session_destroy();

            header('Location: ' . Config::INDEX);

        }

        public function dashboard() {

            if(isset($_SESSION['admin'])) {

                if(isset($_POST['valider_movie'])) {

                    $filename = $_FILES['image']['name'];
                    
                    $target_file = './assets/image/media/' . $filename;

                    $file_extension = pathinfo($target_file, PATHINFO_EXTENSION);
                    $file_extension = strtolower($file_extension);

                    $valid_extension = array("png","jpeg","jpg");

                    if(in_array($file_extension, $valid_extension)){

                        if(move_uploaded_file($_FILES['image']['tmp_name'],$target_file)){

                            $search = [ ' ', '.', '\'', ':', '-', '?', 'à', 'â', 'Á', 'À', 'Â','é', 'è', 'ê', 'É', 'È', 'Ê'];

                            $replace = [ '', '', '', '', '', '', 'a', 'a', 'a', 'a', 'a', 'e', 'e', 'e', 'e', 'e', 'e' ];

                            $slug = strtolower(str_replace($search, $replace, $_POST['titre']));

                            AdminModel::addMedia( $_POST['titre'], $slug, $_POST['description'], $_POST['date'], $_POST['date_fictive'], $filename, $_POST['tmdb']);

                                $idOeuvre = PDO_custom::getInstance() -> lastInsertId();  // Singleton

                            AdminModel::addMovieDuree($idOeuvre, $_POST['duree']);

                            $_SESSION['movie_success']  = 'Le Film à bien été ajoutée à la base de donnée';

                        }
                    
                    } else {

                        $_SESSION['error_upload'] = 'Une Erreur s\'est Produite, Veuillez Réessayer';

                    }

                }

                if(isset($_POST['valider_serie'])) {

                    $filename = $_FILES['image']['name'];
                    
                    $target_file = './assets/image/media/' . $filename;

                    $file_extension = pathinfo($target_file, PATHINFO_EXTENSION);
                    $file_extension = strtolower($file_extension);

                    $valid_extension = array("png","jpeg","jpg");

                    if(in_array($file_extension, $valid_extension)){

                        if(move_uploaded_file($_FILES['image']['tmp_name'],$target_file)){

                            $search = [ ' ', '.', '\'', ':', '-', '?', 'à', 'â', 'Á', 'À', 'Â','é', 'è', 'ê', 'É', 'È', 'Ê'];

                            $replace = [ '', '', '', '', '', '', 'a', 'a', 'a', 'a', 'a', 'e', 'e', 'e', 'e', 'e', 'e' ];

                            $slug = strtolower(str_replace($search, $replace, $_POST['titre']));

                            AdminModel::addMedia( $_POST['titre'], $slug, $_POST['description'], $_POST['date'], $_POST['date_fictive'], $filename, $_POST['tmdb']);

                                $idOeuvre = PDO_custom::getInstance() -> lastInsertId(); // Singleton

                            AdminModel::addSerieEpisode($idOeuvre, $_POST['nbepisode']);

                            $_SESSION['serie_success']  = 'La Serie à bien été ajoutée à la base de donnée';

                        }
                    
                    } else {

                        $_SESSION['error_upload'] = 'Une Erreur s\'est Produite, Veuillez Réessayer';

                    }

                }

                $this -> affichage([], 'dashboard');

            } else {

                header('Location: ' . Config::CONNEXION);

            }

        }

        public function streaming_availibility() {

            if(isset($_SESSION['admin'])) {

                $this -> affichage([], 'streaming_availibility');

            } else {

                header('Location: ' . Config::INDEX);

            }

        }

    }

?>