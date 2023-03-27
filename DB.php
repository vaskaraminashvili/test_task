<?php

class DB
{
    private $servername = "localhost";
    private $username = "root";
    private $password = "";
    private $dbname = "test";
    private $conn = null;

    public function __construct()
    {
        $this->conn = mysqli_connect($this->servername, $this->username, $this->password, $this->dbname);

        // Check connection
        if (!$this->conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
    }

    public function getConnection()
    {
        return $this->conn;
    }

    public function closeConnection()
    {
        mysqli_close($this->conn);
    }
}
