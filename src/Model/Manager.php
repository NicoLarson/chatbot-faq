<?php

class Manager
{
    protected function dbConnect()
    {
        try {
            $db = new PDO('mysql:host=localhost:3307;dbname=bdd_chatbot', 'root', '', array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
            return $db;
        } catch (Exception $e) {
            die('Error: ' . $e->getMessage());
        }
    }

    public function selectQuestionResponse()
    {
        return $this->dbConnect()->query('SELECT * FROM `c_faq`');
    }
}
