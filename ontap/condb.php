<?php
    $host = "127.0.0.1";
    $dbname = "ontap";
    $username = "student";
    $password = "123456";
    try {
        $conn = new PDO("mysql:host=$host; dbname=$dbname", $username, $password);
        
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
?>