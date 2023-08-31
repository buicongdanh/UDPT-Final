<?php

class SongModel extends Model {

    private $_table = 'song';

    public function __construct($db_config) {
        parent::__construct($db_config);
    }

    public function getAllGenres($keyword) {
        $sql = "SELECT * FROM {$this->_table}";
        $result = $this->db->query($sql);

        if ($result) {
            return $result->fetchAll(PDO::FETCH_ASSOC); 
        }
        return false;   
    }

    public function getTitleID($titleName) {
        $sql = "SELECT TitleID FROM title WHERE Title = :titleName";
        $result = $this->db->query($sql, [':titleName' => $titleName]);
        if ($result) {
            $data = $result->fetch(PDO::FETCH_ASSOC);
            return $data['TitleID'] ?? null;
        }
        return null;
    }
    
    public function getArtistID($artistName) {
        $sql = "SELECT ArtistID FROM artist WHERE Name = :artistName";
        $result = $this->db->query($sql, [':artistName' => $artistName]);
        if ($result) {
            $data = $result->fetch(PDO::FETCH_ASSOC);
            return $data['ArtistID'] ?? null;
        }
        return null;
    }
    

    public function searchSongs($keyword, $limit) {
        $sql = "SELECT t.title, s.releasedate, a.name, s.length, s.path 
                FROM (song s JOIN title t on s.titleid = t.titleid) join artist a on (s.artistid = a.artistid)
                WHERE t.title LIKE :keyword";

        $sql = $limit ? $sql . " LIMIT 5" : $sql;

        $result = $this->db->query($sql, [':keyword' => "%$keyword%"]);

        if ($result) {
            return $result->fetchAll(PDO::FETCH_ASSOC); 
        }
        return false;   
    }

    public function addSong($titleName, $releaseDate, $artistName, $length, $path) {
        $titleID = $this->getTitleID($titleName);
        $artistID = $this->getArtistID($artistName);
        $userID = $_SESSION['user']['UserID'];
    
        if (!$titleID) {
            return "Invalid TitleName";
        }
    
        if (!$artistID) {
            return "Invalid ArtistName";
        }
    
        if (!$userID) {
            return "Invalid UserName";
        }
    
        $sql = "INSERT INTO {$this->_table} (TitleID, ReleaseDate, ArtistID, Length, UserID, Path) VALUES (:titleID, :releaseDate, :artistID, :length, :userID, :path)";
    
        $params = [
            ':titleID' => $titleID,
            ':releaseDate' => $releaseDate,
            ':artistID' => $artistID,
            ':length' => $length,
            ':userID' => $userID,
            ':path' => $path
        ];
    
        $result = $this->db->query($sql, $params);
    
        return $result ? true : "Error inserting into the database";
    }
    
}
