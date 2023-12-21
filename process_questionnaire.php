<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta tags for character set and viewport -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Water.css styling library for a clean look -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
    <!-- Title of the HTML page -->
    <title>Questionnaire Form Submission</title>
    <!-- Internal styles for table formatting -->
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>

<?php
// Check if the form is submitted using the GET method
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // Retrieve form data from URL parameters
    $satisfaction = isset($_GET['satisfaction']) ? $_GET['satisfaction'] : '';
    $purposes = isset($_GET['purposes']) ? $_GET['purposes'] : [];
    $whyUs = isset($_GET['whyUs']) ? $_GET['whyUs'] : '';
    $howFind = isset($_GET['howFind']) ? $_GET['howFind'] : '';
    $otherText = isset($_GET['otherText']) ? $_GET['otherText'] : '';

    // Display the submitted form data
    echo '<h2>Thank you for your submission!</h2>';
    echo '<table>';
    echo '<tr><th>Field</th><th>Response</th></tr>';

    // Display Level of Satisfaction
    echo "<tr><td>Level of Satisfaction</td><td>$satisfaction</td></tr>";

    // Display Purposes
    echo '<tr><td>Purposes</td><td>';
    if (!empty($purposes)) {
        echo '<ul>';
        foreach ($purposes as $purpose) {
            echo "<li>$purpose</li>";
        }
        echo '</ul>';
    } else {
        echo 'No purposes selected.';
    }
    echo '</td></tr>';

    // Display "Why did you use our services rather than our competitors?" response
    echo "<tr><td>Why did you use our services rather than our competitors?</td><td>";
    echo !empty($whyUs) ? htmlspecialchars($whyUs) : 'No response provided.';
    echo '</td></tr>';

    // Display "How did you find out about our service?" response
    echo "<tr><td>How did you find out about our service?</td><td>$howFind</td></tr>";

    // Display "Other (Specify)" response if "Other" is selected
    if ($howFind === 'Other') {
        echo "<tr><td>Other (Specify)</td><td>";
        echo !empty($otherText) ? htmlspecialchars($otherText) : 'No response provided.';
        echo '</td></tr>';
    }

    // Close the HTML table
    echo '</table>';

    // Store form data in the database
    storeFormDataInDatabase($satisfaction, $purposes, $whyUs, $howFind, $otherText);
}

// Function to store form data in the database
function storeFormDataInDatabase($satisfaction, $purposes, $whyUs, $howFind, $otherText) {
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

    // Create a table if it doesn't exist in the database
    $createTableSQL = "CREATE TABLE IF NOT EXISTS questionnaire_responses (
        id INT AUTO_INCREMENT PRIMARY KEY,
        satisfaction VARCHAR(255) NOT NULL,
        purposes TEXT,
        why_us TEXT,
        how_find VARCHAR(255) NOT NULL,
        other_text TEXT,
        submission_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    )";

    // Execute the table creation SQL query
    if (!$mysqli->query($createTableSQL)) {
        die("Table creation error: " . $mysqli->error);
    }

    // Insert data into the database table
    $insertSQL = "INSERT INTO questionnaire_responses (satisfaction, purposes, why_us, how_find, other_text) 
        VALUES (?, ?, ?, ?, ?)";
    
    // Prepare the SQL statement
    $stmt = $mysqli->prepare($insertSQL);

    // Check for SQL statement preparation errors
    if (!$stmt) {
        die("SQL error: " . $mysqli->error);
    }

    // Convert array of purposes to a comma-separated string
    $purposesText = implode(", ", $purposes);

    // Bind parameters to the prepared statement
    $stmt->bind_param("sssss", $satisfaction, $purposesText, $whyUs, $howFind, $otherText);

    // Execute the prepared statement
    if ($stmt->execute()) {
        echo "<p>Data successfully inserted into the database.</p>";
    } else {
        echo "<p>Error inserting data into the database: " . $stmt->error . "</p>";
    }

    // Close the prepared statement and database connection
    $stmt->close();
    $mysqli->close();
}
?>

</body>
</html>
