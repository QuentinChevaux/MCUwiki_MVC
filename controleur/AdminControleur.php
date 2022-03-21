<?php

    namespace controleur;

    use Config;
    use model\AdminModel;
use model\LexiqueModel;
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

                                    $_SESSION['access_denied'] = 'Vous n\'avez pas accès à cette Page !';
    
                                    header('Location: ' . Config::INDEX);
    
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

                if(isset($_POST['valider_movie']) && $_SESSION['token'] == $_POST['token']) {

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

                if(isset($_POST['valider_serie']) && $_SESSION['token'] == $_POST['token']) {

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

                $token = uniqid(rand(), true);

                $_SESSION['token'] = $token;
                
                $parametres = compact('token');

                $this -> affichage($parametres, 'dashboard');

            } else {

                header('Location: ' . Config::CONNEXION);

            }

        }

        public function streaming_availibility() {

            if(isset($_SESSION['admin'])) {

                $message = '';

                if(isset($_POST['update_media']) && $_SESSION['token'] == $_POST['token']) {
                    
                    $medias = AdminModel::fetchAllMedia();

                    foreach($medias as $media) {

                        if($media['duree']) {

                            $curl = curl_init();
                
                                curl_setopt_array($curl, [
                                CURLOPT_URL => "https://streaming-availability.p.rapidapi.com/get/basic?country=fr&tmdb_id=movie%2F". $media['tmdb'] . "&output_language=en",
                                CURLOPT_RETURNTRANSFER => true,
                                CURLOPT_FOLLOWLOCATION => true,
                                CURLOPT_ENCODING => "",
                                CURLOPT_MAXREDIRS => 10,
                                CURLOPT_TIMEOUT => 30,
                                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                                CURLOPT_CUSTOMREQUEST => "GET",
                                CURLOPT_HTTPHEADER => [
                                    "x-rapidapi-host: streaming-availability.p.rapidapi.com",
                                    "x-rapidapi-key: c259f58326msh81c225d8de2c3f6p17abf5jsn926f3db2d353"
                                ],
                            ]);

                        } else {

                            $curl = curl_init();
                
                                curl_setopt_array($curl, [
                                CURLOPT_URL => "https://streaming-availability.p.rapidapi.com/get/basic?country=fr&tmdb_id=tv%2F". $media['tmdb'] . "&output_language=en",
                                CURLOPT_RETURNTRANSFER => true,
                                CURLOPT_FOLLOWLOCATION => true,
                                CURLOPT_ENCODING => "",
                                CURLOPT_MAXREDIRS => 10,
                                CURLOPT_TIMEOUT => 30,
                                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                                CURLOPT_CUSTOMREQUEST => "GET",
                                CURLOPT_HTTPHEADER => [
                                    "x-rapidapi-host: streaming-availability.p.rapidapi.com",
                                    "x-rapidapi-key: c259f58326msh81c225d8de2c3f6p17abf5jsn926f3db2d353"
                                ],
                            ]);

                        }

                        $response = curl_exec($curl);
                        $error = curl_error($curl);
                
                        curl_close($curl);
                
                        if ($error) {
                
                            echo "cURL Error #:" . $error;
                
                        } else {
                
                            if (preg_match("/disney/", $response, $matches)) {

                                // Si c'est un film et que la Plateforme dans la base de donnée est différente

                                if($media['duree'] && $media['streaming_platform'] != $matches[0]) {

                                    AdminModel::updateStreamingPlatform($matches[0], $media['id']);

                                    $message .= 'Mis ' . $matches[0] . ' dans ' . $media['titre'];

                                }

                                $response = explode('{', $response);
                                            
                                $link = $response[6];
                                            
                                $link = explode('"', $link);

                                    if($link[3] != $media['streaming_link']) {

                                        // Si lien est différent dans la Base de Donnée

                                        AdminModel::updateStreamingLink($link[3], $media['tmdb']);

                                        $message .= ' avec le lien : ' . $link[3] . '<br />';
                                            
                                    }
                
                            } else if (preg_match("/netflix/", $response, $matches)) {
                
                                if($media['duree'] && $media['streaming_platform'] != $matches[0]) {

                                    // Si c'est un film et que la Plateforme dans la base de donnée est différente

                                    AdminModel::updateStreamingPlatform($matches[0], $media['id']);

                                    $message .= 'Mis ' . $matches[0] . ' dans ' . $media['titre'];

                                }

                                $response = explode('{', $response);
                                            
                                $link = $response[6];
                                            
                                $link = explode('"', $link);

                                    if($link[3] != $media['streaming_link']) {

                                        // Si lien est différent dans la Base de Donnée

                                        AdminModel::updateStreamingLink($link[3], $media['tmdb']);

                                        $message .= ' avec le lien : ' . $link[3] . '<br />';
                                            
                                    }
                
                            } else if (preg_match("/prime/", $response, $matches)) {
                
                                if($media['duree'] && $media['streaming_platform'] != $matches[0]) {

                                    // Si c'est un film et que la Plateforme dans la base de donnée est différente

                                    AdminModel::updateStreamingPlatform($matches[0], $media['id']);

                                        $message .= 'Mis ' . $matches[0] . ' dans ' . $media['titre'];

                                }

                                $response = explode('{', $response);
                                            
                                $link = $response[6];
                                            
                                $link = explode('"', $link);

                                    if($link[3] != $media['streaming_link']) {

                                        // Si lien est différent dans la Base de Donnée

                                        AdminModel::updateStreamingLink($link[3], $media['tmdb']);

                                        $message .= ' avec le lien : ' . $link[3] . '<br />';
                                            
                                    }
                
                            } 
                                    
                        }

                    }
                
                }

                $token = uniqid(rand(), true);

                $_SESSION['token'] = $token;

                $parametres = compact('message', 'token');

                $this -> affichage($parametres, 'streaming_availibility');

            } else {

                header('Location: ' . Config::INDEX);

            }

        }
        
        public function lexiqueajouter() {

            if(isset($_SESSION['admin'])) {

                if(isset($_POST['valider']) && $_SESSION['token'] == $_POST['token']) {

                    AdminModel::addLexique($_POST['titre'], $_POST['definition']);

                    $_SESSION['lexicon_success'] = 'La Définition à bien été ajoutée !';

                }

                if(isset($_POST['display_all']) && $_SESSION['token'] == $_POST['token']) {

                    LexiqueModel::fetchAllLexicon();

                }

                $token = uniqid(rand(), true);

                $_SESSION['token'] = $token;

                $parametres = compact('token');

                $this -> affichage($parametres, 'lexiqueajouter' , 'token');

            } else {

                header('Location: ' . Config::INDEX);

            }

        }

        public function lexiquesupprimer($parametre) {

            if(isset($_SESSION['admin'])) {
                
                $parametres = [];

                if(isset($_POST['fetch_all_lexicon']) && $_SESSION['token'] == $_POST['token']) {

                    $lexique_all = LexiqueModel::fetchAllLexicon();

                    $token = uniqid(rand(), true);

                    $_SESSION['token'] = $token;

                    $parametres = compact('lexique_all', 'token');
     
                }

                if(isset($_POST['search_lexique_submit']) && $_SESSION['token'] == $_POST['token']) {

                    $lexique_like = LexiqueModel::fetchLexiconLike($_POST['search_input']);

                    $token = uniqid(rand(), true);

                    $_SESSION['token'] = $token;

                    $parametres = compact('lexique_like', 'token');

                }
                
                if(isset($_POST['delete_like']) && $_SESSION['token'] == $_POST['token']) {

                    LexiqueModel::deleteById($parametre);

                    $token = uniqid(rand(), true);

                    $_SESSION['token'] = $token;
                    
                    $parametres = compact('token');

                    $_SESSION['lexicon_success'] = 'La Définition à bien été Supprimée !';

                }

                if(isset($_POST['delete_all']) && $_SESSION['token'] == $_POST['token']) {

                    LexiqueModel::deleteById($parametre);

                    $lexique_all = LexiqueModel::fetchAllLexicon();

                    $token = uniqid(rand(), true);

                    $_SESSION['token'] = $token;

                    $parametres = compact('lexique_all', 'token');

                    $_SESSION['lexicon_success'] = 'La Définition à bien été Supprimée !';

                }
                
                $this -> affichage($parametres, 'lexiquesupprimer');

            } else {

                header('Location: ' . Config::INDEX);

            }

        }

        public function personnage() {

            if(isset($_SESSION['admin'])) {

                $filename = '';

                if(isset($_POST['valider']) && $_SESSION['token'] == $_POST['token']) {

                    $filename = $_FILES['image']['name'];   
                    
                    $file_extension = pathinfo($filename, PATHINFO_EXTENSION);
                    $file_extension = strtolower($file_extension);

                    $search = [' ', '\''];

                    $filename = strtolower(str_replace($search, '', $_POST['nom'])) . '.' . $file_extension;

                    $target_file = './assets/image/personnage/' . $filename;

                    $valid_extension = array("png","jpeg","jpg");

                    if(in_array($file_extension, $valid_extension)){

                        if(move_uploaded_file($_FILES['image']['tmp_name'], $target_file)){

                            AdminModel::addPersonnage($_POST['nom'], $_POST['acteur'], $_POST['biographie'], $filename);

                            // Id Du Dernier Personnage Entré dans la Base de Donnée pour le lier avec une Oeuvre
                            $idPersonnage = PDO_custom::getInstance() -> lastInsertId();

                            foreach($_POST['oeuvre'] as $media) {

                                AdminModel::linkPersonnageWithOeuvre($media, $idPersonnage);

                            }
            
                            $_SESSION['personnage_success'] = 'Le Personnage à bien été Ajouté !';

                        }

                    }

                }

                $liste_oeuvre = AdminModel::fetchAllMedia();

                $token = uniqid(rand(), true);

                $_SESSION['token'] = $token;

                $parametres = compact('liste_oeuvre', 'token');

                $this -> affichage($parametres, 'personnage');

            } else {

                header('Location: ' . Config::INDEX);

            }

        }

    }
