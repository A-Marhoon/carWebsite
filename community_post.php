<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Include Water.css for styling -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
    <title>Your Page Title</title>

    <!-- Style for buttons and table -->
    <style>
        button {
            padding: 4px;
        }

        table {
            width: 1000px;
            text-align: center;
        }
    </style>
</head>
<body>

<?php
// Database connection information
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "perfectcarfit";

// Create a new MySQLi connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Class definition for CarReview
class CarReview
{
    // Properties of a CarReview
    private $username;
    private $carName;
    private $carYear;
    private $description;
    private $type;
    private $carImage;
    private $upvotes;
    private $downvotes;
    private $hasVoted;

    // Constructor to initialize CarReview object
    public function __construct($username, $carName, $carYear, $description, $type, $carImage, $upvotes, $downvotes, $hasVoted)
    {
        $this->username = $username;
        $this->carName = $carName;
        $this->carYear = $carYear;
        $this->description = $description;
        $this->type = $type;
        $this->carImage = $carImage;
        $this->upvotes = $upvotes;
        $this->downvotes = $downvotes;
        $this->hasVoted = $hasVoted;
    }

    // Method to save CarReview to the database
    public function saveToDatabase($conn)
    {
        // SQL query to check if the review already exists
        $checkSql = "SELECT * FROM car_reviews WHERE 
            username = '{$this->username}' AND
            carName = '{$this->carName}' AND
            carYear = '{$this->carYear}' AND
            description = '{$this->description}' AND
            type = '{$this->type}'";

        // Execute the check query
        $checkResult = $conn->query($checkSql);

        // Check if the review already exists
        if ($checkResult->num_rows > 0) {
            echo "<h1>Review already exists.</h1><br>";
        } else {
            // SQL query to insert the new review
            $sql = "INSERT INTO car_reviews (username, carName, carYear, description, type, carImage, upvotes, downvotes, hasVoted)
                    VALUES ('{$this->username}', '{$this->carName}', '{$this->carYear}', '{$this->description}', '{$this->type}', '{$this->carImage}', '{$this->upvotes}', '{$this->downvotes}', '{$this->hasVoted}')";

            // Execute the insert query
            if ($conn->query($sql) === TRUE) {
                echo "<h1>Review added to the database successfully.</h1><br>";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }
    }

    // Getter method for username
    public function getUsername()
    {
        return $this->username;
    }

    // Getter method for carName
    public function getCarName()
    {
        return $this->carName;
    }

    // Method to display a table row for the CarReview
    public function displayTable()
    {
        echo '<tr>';
        echo '<td>' . $this->getUsername() . '</td>';
        echo '<td>' . $this->getCarName() . '</td>';
        echo '<td>' . $this->getCarYear() . '</td>';
        echo '<td>' . $this->getDescription() . '</td>';
        echo '<td>' . $this->getType() . '</td>';
        echo '<td>' . ($this->getCarImage() ? '<img src="data:image/jpeg;base64,' . base64_encode($this->getCarImage()) . '" alt="Car Image" style="max-width: 100px; max-height: 100px;">' : 'N/A') . '</td>';
        echo '<td>' . $this->getUpvotes() . '</td>';
        echo '<td>' . $this->getDownvotes() . '</td>';
        echo '</tr>';
    }

    // Getter method for carYear
    public function getCarYear()
    {
        return $this->carYear;
    }

    // Getter method for description
    public function getDescription()
    {
        return $this->description;
    }

    // Getter method for type
    public function getType()
    {
        return $this->type;
    }

    // Getter method for carImage
    public function getCarImage()
    {
        return $this->carImage;
    }

    // Getter method for upvotes
    public function getUpvotes()
    {
        return $this->upvotes;
    }

    // Getter method for downvotes
    public function getDownvotes()
    {
        return $this->downvotes;
    }
}

// Function to display the entire table from the database
function displayTableFromDatabase($conn)
{
    // SQL query to select all reviews from the database
    $sql = "SELECT * FROM car_reviews";

    // Execute the query
    $result = $conn->query($sql);

    // Check if there are results
    if ($result->num_rows > 0) {
        // Display the table header
        echo '<table border="1">';
        echo '<tr>';
        echo '<th>Username</th>';
        echo '<th>Car Name</th>';
        echo '<th>Car Model Year</th>';
        echo '<th>Description</th>';
        echo '<th>Type</th>';
        echo '<th>Car Image</th>';
        echo '<th>Upvotes</th>';
        echo '<th>Downvotes</th>';
        // Remove the Action column header
        echo '</tr>';

        // Loop through each row in the result set
        while ($row = $result->fetch_assoc()) {
            // Create a CarReview object from the row
            $review = new CarReview(
                $row["username"],
                $row["carName"],
                $row["carYear"],
                $row["description"],
                $row["type"],
                $row["carImage"],
                $row["upvotes"],
                $row["downvotes"],
                $row["hasVoted"]
            );

            // Display the table row for the CarReview
            echo '<tr>';
            echo '<td>' . $review->getUsername() . '</td>';
            echo '<td>' . $review->getCarName() . '</td>';
            echo '<td>' . $review->getCarYear() . '</td>';
            echo '<td>' . $review->getDescription() . '</td>';
            echo '<td>' . $review->getType() . '</td>';
            echo '<td>' . ($review->getCarImage() ? '<img src="data:image/jpeg;base64,' . base64_encode($review->getCarImage()) . '" alt="Car Image" style="max-width: 100px; max-height: 100px;">' : 'N/A') . '</td>';
            echo '<td>' . $review->getUpvotes() . '</td>';
            echo '<td>' . $review->getDownvotes() . '</td>';
            // Remove the Action column cells
            echo '</tr>';
        }

        // Close the table
        echo '</table>';
    } else {
        echo "0 results";
    }
}

// Function to search for car reviews by name
function searchCarByName($conn, $carName)
{
    // Array to store search results
    $searchResults = [];

    // SQL query to search for reviews by car name
    $sql = "SELECT * FROM car_reviews WHERE carName LIKE '%$carName%'";

    // Execute the query
    $result = $conn->query($sql);

    // Check if there are results
    if ($result->num_rows > 0) {
        // Loop through each row in the result set
        while ($row = $result->fetch_assoc()) {
            // Create a CarReview object from the row
            $review = new CarReview(
                $row["username"],
                $row["carName"],
                $row["carYear"],
                $row["description"],
                $row["type"],
                $row["carImage"],
                $row["upvotes"],
                $row["downvotes"],
                $row["hasVoted"]
            );

            // Add the review to the search results array
            $searchResults[] = $review;
        }
    }

    // Return the search results
    return $searchResults;
}

// Function to display search results
function displaySearchResults($searchResults)
{
    // Display heading for search results
    echo '<h3>Search Results:</h3>';
    
    // Check if there are search results
    if (!empty($searchResults)) {
        // Display the table for search results
        echo '<table border="1">';
        echo '<tr>';
        echo '<th>Username</th>';
        echo '<th>Car Name</th>';
        echo '<th>Car Model Year</th>';
        echo '<th>Description</th>';
        echo '<th>Type</th>';
        echo '<th>Car Image</th>';
        echo '<th>Upvotes</th>';
        echo '<th>Downvotes</th>';
        echo '</tr>';

        // Loop through each search result and display the table row
        foreach ($searchResults as $result) {
            $result->displayTable();
        }

        // Close the table for search results
        echo '</table>';
    } else {
        // Display message when no results are found
        echo 'No results found.';
    }
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if the required form fields are set
    if (
        isset($_POST["username"]) &&
        isset($_POST["carName"]) &&
        isset($_POST["carYear"]) &&
        isset($_POST["description"]) &&
        isset($_POST["type"])
    ) {
        // Get form data
        $username = $_POST["username"];
        $carName = $_POST["carName"];
        $carYear = $_POST["carYear"];
        $description = $_POST["description"];
        $type = $_POST["type"];
        
        // Note: You may need to handle file uploads properly
        $carImage = null; // You should handle file uploads properly

        // Create a new CarReview object from form data
        $newReview = new CarReview($username, $carName, $carYear, $description, $type, $carImage, 0, 0, false);

        // Save the new review to the database
        $newReview->saveToDatabase($conn);
    } else {
        // Handle the case when some form fields are not set
        echo "<br>";
    }
}

// Check if a car search is requested
if (isset($_POST['searchCar'])) {
    // Get the car name to search
    $searchCarName = $_POST['searchCarName'];
    
    // Search for car reviews by name
    $searchResults = searchCarByName($conn, $searchCarName);
    
    // Display search results
    displaySearchResults($searchResults);
} else {
    // Display the entire table from the database
    displayTableFromDatabase($conn);
}

// Close the database connection
$conn->close();
?>

</body>
</html>
