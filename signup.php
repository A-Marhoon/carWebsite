<?php

// Check if the "name" field is empty
if (empty($_POST["name"])) {
    die("Name is required");
}

// Check if the "email" field contains a valid email address
if (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
    die("Valid email is required");
}

// Check if the "password" field has at least 8 characters
if (strlen($_POST["password"]) < 8) {
    die("Password must be at least 8 characters");
}

// Check if the "password" field contains at least one letter
if (!preg_match("/[a-z]/i", $_POST["password"])) {
    die("Password must contain at least one letter");
}

// Check if the "password" field contains at least one number
if (!preg_match("/[0-9]/", $_POST["password"])) {
    die("Password must contain at least one number");
}

// Check if the "password" and "password_confirmation" fields match
if ($_POST["password"] !== $_POST["password_confirmation"]) {
    die("Passwords must match");
}

// Hash the password using the default password hashing algorithm
$password_hash = password_hash($_POST["password"], PASSWORD_DEFAULT);

// Database connection details
$host = "localhost";
$dbname = "perfectcarfit";
$username = "root";
$password = "";

// Create a new MySQLi instance for database connection
$mysqli = new mysqli($host, $username, $password, $dbname);

// Check for connection errors
if ($mysqli->connect_errno) {
    die("Connection error: " . $mysqli->connect_error);
}

// SQL query to insert user data into the "user" table
$sql = "INSERT INTO user (name, email, password_hash) VALUES (?, ?, ?)";

// Initialize a new MySQLi statement
$stmt = $mysqli->stmt_init();

// Check if the statement can be prepared successfully
if (!$stmt->prepare($sql)) {
    die("SQL error: " . $mysqli->error);
}

// Bind parameters to the prepared statement
$stmt->bind_param("sss", $_POST["name"], $_POST["email"], $password_hash);

// Execute the prepared statement
if ($stmt->execute()) {
    // Output HTML if signup is successful
    ?>
    <!DOCTYPE html>
    <html>
    <head>
        <title>Signup</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
    </head>
    <body>

    <h1>Signup</h1>

    <p>Signup successful.
        You can now <a href="login.php">log in</a>.</p>

    </body>
    </html>
    <?php
    exit;
} else {
    // Check if the email is already taken
    if ($mysqli->errno === 1062) {
        die("Email already taken");
    } else {
        die($mysqli->error . " " . $mysqli->errno);
    }
}

?>
