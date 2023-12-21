<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Meta tags for character set and viewport -->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <!-- Link to external stylesheet (water.css) -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
  
  <!-- Page title -->
  <title>Contact Form Submission</title>
  
  <!-- Internal styling for h2 and table elements -->
  <style>
    h2 {
      color: #0066cc; /* Styling for h2 element */
    }

    table {
      width: 100%; /* Table takes full width of the container */
      border-collapse: collapse; /* Collapse table borders */
      margin-top: 20px; /* Margin at the top of the table */
    }

    th, td {
      border: 1px solid #ddd; /* Border and padding for table cells */
      padding: 8px;
      text-align: left;
    }
  </style>
</head>
<body>

<?php
// Define a class to represent form data
class ContactFormData {
    public $fullName;
    public $email;
    public $phoneNumber;
    public $message;

    // Constructor to initialize ContactFormData object
    public function __construct($fullName, $email, $phoneNumber, $message) {
        $this->fullName = $fullName;
        $this->email = $email;
        $this->phoneNumber = $phoneNumber;
        $this->message = $message;
    }
}

// Array to store form entries
$formEntries = [];

// Function to handle form submission
function handleFormSubmission() {
    // Check if form data is submitted
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Retrieve form data
        $fullName = isset($_POST['full_name']) ? $_POST['full_name'] : '';
        $email = isset($_POST['email']) ? $_POST['email'] : '';
        $phoneNumber = isset($_POST['phone_number']) ? $_POST['phone_number'] : '';
        $message = isset($_POST['message']) ? $_POST['message'] : '';

        // Check if required fields are filled
        if ($fullName && $email && $message) {
            // Create a new instance of ContactFormData
            $formData = new ContactFormData($fullName, $email, $phoneNumber, $message);

            // Add the form data to the array
            global $formEntries;
            $formEntries[] = $formData;

            // Display the form data in a table format
            displayFormData();

            // Insert data into the database table
            insertFormDataToDatabase($formData);
        } else {
            echo "<p>Error: Please fill in all required fields.</p>";
        }
    }
}

// Function to insert form data into the database table
function insertFormDataToDatabase($formData) {
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

    // Prepare SQL statement for inserting data
    $sql = "INSERT INTO contact_form_entries (full_name, email, phone_number, message) VALUES (?, ?, ?, ?)";
    $stmt = $mysqli->prepare($sql);

    // Check for SQL statement preparation errors
    if (!$stmt) {
        die("SQL error: " . $mysqli->error);
    }

    // Bind parameters and execute the statement
    $stmt->bind_param("ssss", $formData->fullName, $formData->email, $formData->phoneNumber, $formData->message);

    if ($stmt->execute()) {
        echo "<p>Data successfully inserted into the database.</p>";
    } else {
        echo "<p>Error inserting data into the database: " . $stmt->error . "</p>";
    }

    // Close the statement and the connection
    $stmt->close();
    $mysqli->close();
}

// Function to display form data in a table
function displayFormData() {
    global $formEntries;

    // Display a confirmation message and a table of form data
    echo "<h2>Contact Form has been received. Thank you! Our team will write back to you as soon as possible</h2>";
    echo "<table border='1'>";
    echo "<tr><th>Full Name</th><th>Email</th><th>Phone Number</th><th>Message</th></tr>";

    // Loop through form entries and display each entry in a table row
    foreach ($formEntries as $entry) {
        echo "<tr>";
        echo "<td>{$entry->fullName}</td>";
        echo "<td>{$entry->email}</td>";
        echo "<td>{$entry->phoneNumber}</td>";
        echo "<td>{$entry->message}</td>";
        echo "</tr>";
    }

    // Close the table structure
    echo "</table>";
}

// Handle form submission
handleFormSubmission();
?>

</body>
</html>
