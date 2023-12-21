<!DOCTYPE html>
<html>
<head>
    <title>Delete Account</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
    
    <h1>Delete Your Account</h1>
    
    <?php
    // Check if the form is submitted
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        
        // Database connection details
        $host = "localhost";
        $dbname = "perfectcarfit";
        $username = "root";
        $password = "";

        // Create a new MySQLi connection
        $mysqli = new mysqli($host, $username, $password, $dbname);

        // Check for connection errors
        if ($mysqli->connect_errno) {
            die("Connection error: " . $mysqli->connect_error);
        }

        // Retrieve user information based on the provided email
        $email = $_POST["email"];
        $password = $_POST["password"];

        // Verify the credentials before deleting the account
        $sql = "SELECT * FROM user WHERE email = ?";
        $stmt = $mysqli->prepare($sql);

        if (!$stmt) {
            die("SQL error: " . $mysqli->error);
        }

        $stmt->bind_param("s", $email);
        $stmt->execute();

        // Fetch the user data
        $result = $stmt->get_result();
        $user = $result->fetch_assoc();

        // Check if the user exists and the provided password is correct
        if ($user && password_verify($password, $user["password_hash"])) {
            // Delete the user account
            $deleteSql = "DELETE FROM user WHERE id = ?";
            $deleteStmt = $mysqli->prepare($deleteSql);

            if (!$deleteStmt) {
                die("SQL error: " . $mysqli->error);
            }

            $deleteStmt->bind_param("i", $user["id"]);
            $deleteStmt->execute();

            // Display a message after successful deletion
            echo "<p>Your account has been successfully deleted.</p>";
        } else {
            echo "<p>Invalid email or password. Please try again.</p>";
        }

        $stmt->close();
        $deleteStmt->close();
        $mysqli->close();
    }
    ?>
</body>
</html>
