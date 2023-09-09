<?php

// Define a constant for the root path if it hasn't been defined
if (!defined('ROOT_PATH')) {
    define('ROOT_PATH', realpath(__DIR__));
}

require_once ROOT_PATH . "/core/config.inc.php";

foreach (glob(ROOT_PATH . "/core/*.php") as $filename) {
    require_once $filename;
}

$route['default_controller'] = 'HomeController';

$web_root = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on') ? 'https' : 'http' . '://' . $_SERVER['HTTP_HOST'] . '/19127348_BuiCongDanh';
DEFINE('_WEB_ROOT', $web_root);

// http://localhost:8080/19127348_BuiCongDanh/public/images/user/default.jpg
$default_image = _WEB_ROOT . '/public/images/user/default.jpg';
DEFINE('DEFAULT_USER_IMAGE', $default_image);

$default_artist_image = _WEB_ROOT . '/public/images/artist/artist_default.png';
DEFINE('DEFAULT_ARTIST_IMAGE', $default_artist_image);
