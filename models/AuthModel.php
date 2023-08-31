<?php

class AuthModel extends Model {

    private $_table = 'User';

    public function __construct($db_config) {
        parent::__construct($db_config);
    }

    public function authenticate($username, $password) {
        $sql = "SELECT * FROM {$this->_table} WHERE UserName = :UserName AND Password = :Password";
        $result = $this->db->query($sql, [':UserName' => $username, ':Password' => $password]);
    
        $user = $result->fetch(PDO::FETCH_ASSOC);
    
        if ($user) {
            $_SESSION['user'] = $user;
            return $user;
        }
        return false;
    }
    
    
}
