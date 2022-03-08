<?php

    class PDO_custom extends PDO{

        private static $instance = null;

        private function __construct($host = 'localhost',
                             $dbname = 'mcuwiki',
                             $user = 'root', 
                             $password = '') 
        {
            
            parent::__construct('mysql:host=' . $host . ';dbname=' . $dbname . ';charset=UTF8', $user, $password);

        }

        public static function  getInstance() {

            if(self::$instance == null) {

                self::$instance = new PDO_custom();
                
            }    
                
            return self::$instance;

        }

    }

?>