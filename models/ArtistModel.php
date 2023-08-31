<?php

class ArtistModel extends Model {

    private $_table = 'artist';
    //private $_table_songs = 'songs';

    public function __construct($db_config) {
        parent::__construct($db_config);
    }

    public function getTop20ArtistsBySongs() {
        $sql = "SELECT a.artistid, a.name, COUNT(s.songid) as song_count 
                FROM artist a 
                JOIN song s ON a.artistid = s.artistid 
                GROUP BY a.artistid, a.name 
                ORDER BY song_count DESC 
                LIMIT 20";

        $result = $this->db->query($sql);

        if ($result) {
            return $result->fetchAll(PDO::FETCH_ASSOC); 
        }
        return false;   
    }

    public function searchArtists($keyword, $limit) {
        $sql = "SELECT * FROM {$this->_table} WHERE Name LIKE :keyword";
        $sql = $limit ? $sql . " LIMIT 5" : $sql;
        $result = $this->db->query($sql, [':keyword' => "%$keyword%"]);
    
        if ($result) {
            return $result->fetchAll(PDO::FETCH_ASSOC);
        }
        return false;
    }
}
