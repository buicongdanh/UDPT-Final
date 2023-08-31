<?php
class AuthController extends Controller {

    private $model_Auth;

    public function __construct() {
        $this->model_Auth = $this->model('AuthModel');
    }


    public function login() {
        if(isset($_SESSION['user'])) {
            echo '<script>
                    alert("Already login");
                    window.location.href = "/19127348_BuiCongDanh/home";
                </script>';
            exit();
        }
    
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $username = $_POST['username'];
            $password = $_POST['password'];
            
            $user = $this->model_Auth->authenticate($username, $password);
    
            if ($user) {
                echo '<script>
                    alert("Login success");
                    window.location.href = "/19127348_BuiCongDanh/home";
                </script>';
                exit();
            } else {
                echo '<script>
                    alert("Login failed, check your username or password");
                    window.location.href = "/19127348_BuiCongDanh/home";
                </script>';
                exit();
            }
        }
    }

    public function logout() {
        unset($_SESSION['user']);
        echo '<script>
            alert("Logout success");
            window.location.href = "/19127348_BuiCongDanh/home";
        </script>';
        exit();
    }
}
