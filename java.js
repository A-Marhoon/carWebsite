

  function updateWelcomeMessage() {
    // Get current date and time
    var currentDate = new Date();
    var currentDateString = currentDate.toDateString();
    var currentTimeString = currentDate.toLocaleTimeString();

    // Set welcome message with company name
    var welcomeMessage = `Welcome to the Perfect Car Fit website! Today is ${currentDateString}, and the time is ${currentTimeString}`;

    // Update the welcome message in the HTML
    document.getElementById('welcomeMessage').textContent = welcomeMessage;
  }

  // Call the function to update the welcome message
  updateWelcomeMessage();

  // Optionally, update the message every minute (adjust the interval as needed)
  setInterval(updateWelcomeMessage, 1);
