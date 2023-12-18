<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contact Form Submission</title>
</head>
<body>

<?php
// Define a class to represent form data
class ContactFormData {
    public $fullName;
    public $email;
    public $phoneNumber;
    public $message;

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
        } else {
            echo "<p>Error: Please fill in all required fields.</p>";
        }
    }
}

// Function to display form data in a table
function displayFormData() {
    global $formEntries;

    echo "<h2>Contact Form Entries</h2>";
    echo "<table border='1'>";
    echo "<tr><th>Full Name</th><th>Email</th><th>Phone Number</th><th>Message</th></tr>";

    foreach ($formEntries as $entry) {
        echo "<tr>";
        echo "<td>{$entry->fullName}</td>";
        echo "<td>{$entry->email}</td>";
        echo "<td>{$entry->phoneNumber}</td>";
        echo "<td>{$entry->message}</td>";
        echo "</tr>";
    }

    echo "</table>";
}

// Handle form submission
handleFormSubmission();
?>


</body>
</html>
