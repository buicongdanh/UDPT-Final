<?php
    session_start();
    date_default_timezone_set('Asia/Ho_Chi_Minh');
    define('ROOT_PATH', realpath(__DIR__));
    // Bootstrap the application (database connections, configurations, etc.)
    require_once "bootstrap.php";
    
    // Start the application
    new App();
