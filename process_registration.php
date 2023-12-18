<!-- process_registration.php -->

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Process</title>
</head>
<body>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['login'])) {
        // Handle login form submission
        handleLogin();
    } elseif (isset($_POST['create_account'])) {
        // Handle create account form submission
        handleCreateAccount();
    } else {
        echo "<h2>Error: Action not specified.</h2>";
    }
} else {
    echo "<h2>Error: Form submission method not allowed.</h2>";
}

function handleCreateAccount() {
    // Retrieve create account form data
    $name = isset($_POST['name']) ? $_POST['name'] : '';
    $email = isset($_POST['email']) ? $_POST['email'] : '';
    $password = isset($_POST['password']) ? $_POST['password'] : '';
    $confirmPassword = isset($_POST['confirm_password']) ? $_POST['confirm_password'] : '';

    // Check if password and confirmed password match
    if ($password === $confirmPassword) {
        // Passwords match, proceed with processing
        echo "<h2>Account Created Successfully</h2>";
        echo "<p>Name: $name</p>";
        echo "<p>Email: $email</p>";
        // Do not echo passwords in a real application, this is just for demonstration
        echo "<p>Password: $password</p>";
        echo "<p>Confirm Password: $confirmPassword</p>";
    } else {
        // Passwords don't match, display an error message
        echo "<h2>Error: Passwords do not match.</h2>";
    }
}

function handleLogin() {
    // Retrieve login form data
    $loginEmail = isset($_POST['email']) ? $_POST['email'] : '';
    $loginPassword = isset($_POST['password']) ? $_POST['password'] : '';

    // Implement your login logic here
    // For demonstration purposes, we'll just display the login details
    echo "<h2>Login Successful</h2>";
    echo "<p>Email: $loginEmail</p>";
    // Do not echo passwords in a real application, this is just for demonstration
    echo "<p>Password: $loginPassword</p>";
}
?>

</body>
</html>
