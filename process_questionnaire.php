<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Questionnaire Form Submission</title>
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
// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // Retrieve form data
    $satisfaction = isset($_GET['satisfaction']) ? $_GET['satisfaction'] : '';
    $purposes = isset($_GET['purpose']) ? (array)$_GET['purpose'] : [];
    $whyUs = isset($_GET['textArea1']) ? $_GET['textArea1'] : '';
    $howFind = isset($_GET['howFind']) ? $_GET['howFind'] : '';
    $otherText = isset($_GET['textArea2']) ? $_GET['textArea2'] : '';

    echo '<h2>Thank you for your submission!</h2>';
    echo '<table>';
    echo '<tr><th>Field</th><th>Response</th></tr>';

    echo "<tr><td>Level of Satisfaction</td><td>$satisfaction</td></tr>";

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

    echo "<tr><td>Why did you use our services rather than our competitors?</td><td>";
    echo !empty($whyUs) ? htmlspecialchars($whyUs) : 'No response provided.';
    echo '</td></tr>';

    echo "<tr><td>How did you find out about our service?</td><td>$howFind</td></tr>";

    if ($howFind === 'Other') {
        echo "<tr><td>Other (Specify)</td><td>";
        echo !empty($otherText) ? htmlspecialchars($otherText) : 'No response provided.';
        echo '</td></tr>';
    }

    echo '</table>';
}
?>

</body>
</html>
