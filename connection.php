<?php
$servername = "localhost";
$username = "root";  
$password = ""; 
$dbname = "hospital_management_system"; 

$database = new mysqli($servername, $username, $password, $dbname);

if ($database->connect_error) {
    die("Échec de la connexion : " . $database->connect_error);
}
?>