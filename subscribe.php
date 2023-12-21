<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
    <title>Newsletter Subscription</title>
    <style>
        /* Add your styles here */
        body {
            font-family: Arial, sans-serif;
        }

        .thank-you-message {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>

<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "perfectcarfit";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the table exists, if not, create it
$tableName = "newsletters";
$checkTable = $conn->query("SHOW TABLES LIKE '$tableName'");

if ($checkTable->num_rows == 0) {
    // Table doesn't exist, create it
    $createTableSql = "CREATE TABLE $tableName (
        id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        email VARCHAR(255) NOT NULL
    )";

    if ($conn->query($createTableSql) === TRUE) {
        echo "<p>Table '$tableName' created successfully.</p>";
    } else {
        echo "<p>Error creating table: " . $conn->error . "</p>";
    }
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the email from the form
    $email = $_POST["email"];

    // Check if the email already exists in the database
    $checkEmailSql = "SELECT * FROM $tableName WHERE email = '$email'";
    $result = $conn->query($checkEmailSql);

    if ($result->num_rows > 0) {
        // Email already exists, display a message
        ?>
        <div class="thank-you-message">
            Thank you! You are already subscribed to our newsletter.
        </div>
        <?php
    } else {
        // Email does not exist, insert it into the database
        $insertEmailSql = "INSERT INTO $tableName (email) VALUES ('$email')";
        
        if ($conn->query($insertEmailSql) === TRUE) {
            // Display the thank you message with HTML and styling
            ?>
            <div class="thank-you-message">
                Thank you for subscribing to our newsletter!
            </div>
            <?php
        } else {
            echo "<p>Error: " . $insertEmailSql . "<br>" . $conn->error . "</p>";
        }
    }
}

// Close the database connection
$conn->close();
?>

</body>
</html>
