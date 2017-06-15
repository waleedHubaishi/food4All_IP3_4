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
        $sql = "INSERT INTO user (name, email, password) values (".$userName.", ".$userEmail.", ".$userPassword.")";
        if (mysqli_query($conn, $sql)) {
            echo "Query success!";
            return true;
        } else {
            echo "Query failed!";
            return false;
        }
        $stmt = $this->conn->prepare("INSERT INTO 'user' ('Name', 'Email', 'Password') values (?, ?, ?)");
        print_r($userName);
        print_r($userEmail);
        print_r($userPassword);
        // print_r($stmt);
        $stmt->bind_param("sss", $userName, $userEmail, $userPassword);
        $result = $stmt->execute();

        $stmt->close();
        if ($result) {
            print_r("asdfasdf");
            return true;
        } else {
            print_r("qwerqwer");
            return false;
        }
    }
}
