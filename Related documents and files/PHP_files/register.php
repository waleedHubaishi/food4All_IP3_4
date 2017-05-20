<?php
/**
 * Created by PhpStorm.
 * User: husseinfarzi
 * Date: 13.04.17
 * Time: 23:42
 */

    //creating response array
    $response = array();
    
    if($_SERVER['REQUEST_METHOD']=='POST'){

        //getting values
        $userName = htmlspecialchars($_POST['Name']);
        $userEmail = htmlspecialchars($_POST['Email']);
        $userPassword = htmlspecialchars($_POST['Password']);

        //including the db operation file
        require_once 'DbOperation.php';
        
        $db = new DbOperation();
        
        //inserting values
        if($db->createUser($userName, $userEmail, $userPassword)){
            $response['error']=false;
            $response['message']='User added successfully';
        }else{
            
            $response['error']=true;
            $response['message']='Could not add user';
        }
        
    } else {
        $response['error']=true;
        $response['message']='You are not authorized';
    }
    echo json_encode($response);
