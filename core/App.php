<?php

class App {

    protected $controller = 'HomeController';
    protected $action = 'index';
    protected $params = [];

    public function __construct() {
        $this->handleUrl();
    }
    
    private function handleUrl() {
        $url = $this->getUrl();
        $url = strtok($url, '?');

        $url = trim($url, '/');
        $url = filter_var($url, FILTER_SANITIZE_URL);

        $urlArr = array_filter(explode('/', $url));
        $urlArrVal = array_values($urlArr);

        //controller
        if(!empty($urlArrVal[0])){
            $this->controller = ucfirst($urlArrVal[0]) . 'Controller';
        }
        else {
            $this->controller = ucfirst($this->controller);
        }
        if(file_exists('controllers/'. $this->controller . '.php')) {
            require_once 'controllers/'. $this->controller . '.php';

            if(class_exists($this->controller)) {
                $this->controller = new $this->controller();    
                unset($urlArrVal[0]);
            }
        }

        //action 
        if(!empty($urlArrVal[1])){
            $this->action = $urlArrVal[1];
            unset($urlArrVal[1]);
        }

        //params
        $this->params = array_values($urlArrVal);
        
        //method is available
        if(method_exists($this->controller, $this->action)){
            call_user_func_array([$this->controller, $this->action], $this->params);
        }
        else {
            $this->loadError();
        }
    }
    
    private function getUrl(){
        $path_info = App::getPATH_INFO($_SERVER['REQUEST_URI']);
        
        return $path_info;
    }

    public static function getPATH_INFO($path){
        $path_elements = explode("/", $path);
        $path_info = "";
        if (isset($path_elements[2])){
            for ($i = 2 ;$i < count($path_elements); $i++ )
                $path_info .= "/".$path_elements[$i];
        }
        return $path_info;
    }
    
    public function loadError($name='404') {
        echo("Error");
    }
}
    

