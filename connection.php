<?php
$db_host = getenv('DB_HOST') ?: 'localhost';
$db_user = getenv('DB_USER') ?: 'buspass_user';
$db_password = getenv('DB_PASSWORD') ?: 'buspass_password';
$db_name = getenv('DB_NAME') ?: 'travel';

$conn = mysqli_connect($db_host, $db_user, $db_password, $db_name);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>