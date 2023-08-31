<?php

class Model {

    protected $db;

    function __construct($db_config) {
        $this->db = new Database($db_config);
    }
}


