<?php  
    $servername = getenv('DB_HOST') ?: "localhost";  
    $username = getenv('DB_USER') ?: "root";  
    $password = getenv('DB_PASSWORD') ?: "";  
    $database = getenv('DB_NAME') ?: "travel";

    $conn = mysqli_connect($servername, $username, $password, $database);
    
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>