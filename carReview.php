<?php

// Class definition for CarReview
class CarReview {
    // Public properties of a CarReview
    public $username;
    public $carName;
    public $carYear;
    public $description;
    public $type;
    public $carImage;
    public $upvotes;
    public $downvotes;
    public $hasVoted;

    // Constructor to initialize CarReview object
    public function __construct($username, $carName, $carYear, $description, $type, $carImage, $upvotes, $downvotes, $hasVoted) {
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
}

// Array of CarReview objects
$carReviews = [
    // Creating instances of CarReview with sample data
    new CarReview('CarEnthusiast1', 'Tesla Model S', '2022', 'Impressed with the acceleration and cutting-edge technology!', 'review', null, 3, 0, false),
    new CarReview('DailyDriver', 'Toyota Camry', '2021', 'Reliable daily driver with great fuel efficiency.', 'review', null, 0, 2, false),
    new CarReview('DIYCarExpert', 'Honda Civic', '2020', 'Essential guide to DIY car maintenance for your Civic.', 'guide', null, 0, 0, false),
    new CarReview('FuelEfficiencyPro', 'Ford Fusion Hybrid', '2019', 'Top tips for maximizing fuel efficiency in your Fusion Hybrid.', 'tips', null, 1, 0, false),
    new CarReview('AutoJournalist', 'Chevrolet Malibu', '2018', 'In-depth review highlighting the pros and cons of the Malibu.', 'review', null, 0, 0, false),
    new CarReview('FirstTimeBuyer', 'Subaru Outback', '2017', 'Helpful guide for first-time buyers looking at the Subaru Outback.', 'guide', null, 0, 0, false),
];

// Function to display the table content
function displayTable($carReviews) {
    // HTML table structure with headings
    echo '<table id="carTable" style="margin: 40px">
            <thead>
                <tr>
                    <th class="tableHeading">Username</th>
                    <th class="tableHeading">Car Name</th>
                    <th class="tableHeading">Car Model Year</th>
                    <th class="tableHeading">Description</th>
                    <th class="tableHeading">Type</th>
                    <th class="tableHeading">Car Image</th>
                    <th class="tableHeading">Upvotes</th>
                    <th class="tableHeading">Downvotes</th>
                    <th class="tableHeading">Action</th>
                </tr>
            </thead>
            <tbody id="tableBody">';

    // Loop through each CarReview object and display a table row
    foreach ($carReviews as $index => $review) {
        echo '<tr>
                <td>' . $review->username . '</td>
                <td>' . $review->carName . '</td>
                <td>' . $review->carYear . '</td>
                <td>' . $review->description . '</td>
                <td>' . $review->type . '</td>
                <td>' . ($review->carImage ? '<img src="' . $review->carImage . '" alt="Car Image" style="max-width: 100px; max-height: 100px;">' : 'N/A') . '</td>
                <td>' . $review->upvotes . '</td>
                <td>' . $review->downvotes . '</td>
                <td>
                    <!-- Buttons for upvote, downvote, and remove actions with corresponding JavaScript function calls -->
                    <button style="background-color: rgba(4, 234, 212, 0.8);" onclick="upvote(' . $index . ')">Upvote</button>
                    <button style="background-color: rgba(227, 4, 234, 0.8);" onclick="downvote(' . $index . ')">Downvote</button>
                    <button style="background-color: #f44336;" onclick="removeReview(' . $index . ')">Remove</button>
                </td>
            </tr>';
    }

    // Close the table structure
    echo '</tbody>
        </table>';
}

// Call the function to display the table content
displayTable($carReviews);

?>
