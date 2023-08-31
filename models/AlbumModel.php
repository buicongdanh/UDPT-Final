<?php

class AlbumModel extends Model {

    private $_table = 'album';

    public function __construct($db_config) {
        parent::__construct($db_config);
    }

    public function getTop20LatestAlbum() {
        $sql = "SELECT * FROM {$this->_table} ORDER BY ReleaseDate DESC LIMIT 20";
        $result = $this->db->query($sql);

        if ($result) {
            return $result->fetchAll(PDO::FETCH_ASSOC); 
        }
        return false;   
    }

    public function searchAlbums($keyword, $limit) {
        $sql = "SELECT * FROM {$this->_table} WHERE Title LIKE :keyword";
        $sql = $limit ? $sql . " LIMIT 5" : $sql;
        $result = $this->db->query($sql, [':keyword' => "%$keyword%"]);
    
        if ($result) {
            return $result->fetchAll(PDO::FETCH_ASSOC);
        }
        return false;
    }
}
