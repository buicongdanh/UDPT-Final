<?php

class Controller {
    public function model($model) {
        global $config;
        $modelPath = './models/' . $model . '.php';

        if (file_exists($modelPath)) {
            require_once $modelPath;

            if (class_exists($model)) {
                return new $model($config['database']);
            } else {
                throw new Exception("Class $model not found in $modelPath");
            }
        } else {
            throw new Exception("Model file not found: $modelPath");
        }
    }

    // Render a view
    public function view($view, $data = []) {
        extract($data);

        $viewPath = ROOT_PATH . '/views/' . $view . '.php';
        //var_dump($viewPath);

        if (file_exists($viewPath)) {
            require_once $viewPath;
        } else {
            echo 'View not found: ' . $view;
        }
    }
}
