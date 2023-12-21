<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
    
    <h1>You have Signed in successfully</h1>
    
    <?php
    // Check if the user is logged in (using session)
    session_start();
    if (isset($_SESSION["user_id"])) {
        // Fetch user information from the session
        $user = getUserInfo($_SESSION["user_id"]);
        
        // Assuming you have a user object with a "name" property
        $userName = $user["name"];
    } else {
        // Redirect to login if not logged in
        header("Location: login.php");
        exit;
    }
    
    // Function to get user information based on user ID
    function getUserInfo($userId) {
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

        // SQL query to retrieve user data based on the provided user ID
        $sql = "SELECT * FROM user WHERE id = ?";
        $stmt = $mysqli->prepare($sql);

        if (!$stmt) {
            die("SQL error: " . $mysqli->error);
        }

        $stmt->bind_param("i", $userId);
        $stmt->execute();

        // Fetch the user data
        $result = $stmt->get_result();
        $user = $result->fetch_assoc();

        $stmt->close();
        $mysqli->close();

        return $user;
    }
    ?>
    
    <p><a href="index.html">return to Home Page</a></p>

</body>
</html>
