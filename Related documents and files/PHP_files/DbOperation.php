<?php
/**
 * Created by PhpStorm.
 * User: husseinfarzi
 * Date: 13.04.17
 * Time: 23:42
 */
class DbOperation
{
    private $conn;

    //Constructor
    function __construct()
    {
        require_once dirname(__FILE__) . '/Constants.php';
        require_once dirname(__FILE__) . '/DbConnect.php';
        // opening db connection
        $db = new DbConnect();
        $this->conn = $db->connect();
    }

    //Function to create a new user
    public function createUser($userName, $userEmail, $userPassword)
    {
        //Start Björn-Code
        $sql = "INSERT INTO user (Name, Email, Password) values ('" . $userName . "', '" . $userEmail . "', '" . $userPassword . "')";
        if (mysqli_query($this->conn, $sql)) {
            echo "Query success!";
            return true;
        } else {
            echo "Query failed!";
            return false;
        }
        //End Björn-Code
    }

    public function boolean loginUser($userEmail, $userPassword) {
        $sql = "SELECT IDuser FROM user WHERE Email='" . $userEmail . "' AND Password='" . $userPassword . "'";
        $result = mysqli_query($this->conn, $sql);
        if(mysqli_num_rows($result)==1) {
            return true;
        } else {
            return false;
        }
    }
}
