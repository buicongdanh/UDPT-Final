<?php

class Connection {
    private static $instance = NULL;

    private function __construct() { }

    public static function getInstance($config){
        if (self::$instance == null) {
            $dsn = 'mysql:dbname='. $config['db'] . ';host='. $config['host'];
            $options = [
                PDO::MYSQL_ATTR_INIT_COMMAND => 'SET CHARSET utf8',
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
            ];

            try {
                self::$instance = new PDO($dsn, $config['user'], $config['password'], $options);
            } catch (Exception $exception) {
                die($exception->getMessage());
            }
        }
        return self::$instance;
    }
}
