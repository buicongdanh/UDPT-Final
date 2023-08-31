<?php

class GenreModel extends Model {

    private $_table = 'genre';

    public function __construct($db_config) {
        parent::__construct($db_config);
    }

    public function getAllGenres() {
        $sql = "SELECT * FROM {$this->_table}";
        $result = $this->db->query($sql);

        if ($result) {
            return $result->fetchAll(PDO::FETCH_ASSOC); 
        }
        return false;   
    }
    
}
