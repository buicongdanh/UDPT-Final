<?php

class Database {
    private $__conn;
    function __construct($db_config) {
        //global $db_config;
        $this->__conn = Connection::getInstance($db_config);
    }

    function query($sql, $params = []) {
        try {
            $stmt = $this->__conn->prepare($sql);
            $stmt->execute($params);
            return $stmt;
        } catch (Exception $exception) {
            $message = $exception->getMessage();
            die($message);
        }
    }
    

    function insert($table, $data) {
        if (!empty($data)) {
            $fields = array_keys($data);
            $placeholders = array_fill(0, count($data), '?');
            
            $sql = sprintf("INSERT INTO %s (%s) VALUES (%s)", $table, implode(',', $fields), implode(',', $placeholders));
            
            $this->query($sql, array_values($data));
            return true;
        }
        return false;
    }
    

    function update($table, $data, $condition = '') {
        $fields = array_keys($data);
        $placeholders = array_fill(0, count($data), '?');
        $setStr = implode('=?,', $fields) . '=?';
        
        $sql = sprintf("UPDATE %s SET %s", $table, $setStr);
        if ($condition) {
            $sql .= " WHERE $condition";
        }
        
        $this->query($sql, array_values($data));
        return true;
    }
    

    function delete($table, $id) {
        $sql = 'DELETE FROM ' . $table;

        if(!empty($id)){
            $sql .= ' WHERE id=' . $id;
        }

        $status = $this->query($sql);

        return $status ? true : false;
    }

    function lastInsertID() {
        return $this->__conn->lastInsertID();
    }
}