<?php

// Database connection details
$host = "localhost";   // Database host
$dbname = "perfectcarfit";  // Database name
$username = "root";     // Database username
$password = "";         // Database password

// Create a new MySQLi connection using provided credentials
$mysqli = new mysqli(
    hostname: $host,
    username: $username,
    password: $password,
    database: $dbname
);

// Check for connection errors
if ($mysqli->connect_errno) {
    // If there is a connection error, terminate the script and display an error message
    die("Connection error: " . $mysqli->connect_error);
}

// Return the MySQLi connection object
// Note: It is common to use this connection object throughout the script to interact with the database
return $mysqli;

?>
