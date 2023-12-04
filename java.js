

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


  // Object Type 1
function CommunityMember(name, email, password) {
  this.name = name;
  this.email = email;
  this.password = password;
}

// Object Type 2
function CarEnthusiast(story, tipsAndTricks, forumPosts) {
  this.story = story;
  this.tipsAndTricks = tipsAndTricks;
  this.forumPosts = forumPosts;
}

// Example data for Object Type 1 (Community Members)
let communityMembersArray = [
  new CommunityMember("John Doe", "john@example.com", "password123"),
  new CommunityMember("Alice Smith", "alice@example.com", "password456"),
  // Add more members as needed
];

// Example data for Object Type 2 (Car Enthusiasts)
let carEnthusiastsArray = [
  new CarEnthusiast("I found my dream car on a road trip!", "DIY maintenance tips", "Discussing latest car trends"),
  new CarEnthusiast("My car story and adventures", "Modifications and upgrades", "Car care essentials"),
  // Add more enthusiasts as needed
];


// Function to display Community Members in the table
function displayCommunityMembers() {
  let tableBody = document.getElementById('communityMembersTable').getElementsByTagName('tbody')[0];

  communityMembersArray.forEach(member => {
      let row = tableBody.insertRow();
      // Insert cells and populate with object properties
      row.insertCell().textContent = member.name;
      row.insertCell().textContent = member.email;
      row.insertCell().textContent = member.password;
  });
}

// Function to display Car Enthusiasts in the table
function displayCarEnthusiasts() {
  let tableBody = document.getElementById('carEnthusiastsTable').getElementsByTagName('tbody')[0];

  carEnthusiastsArray.forEach(enthusiast => {
      let row = tableBody.insertRow();
      // Insert cells and populate with object properties
      row.insertCell().textContent = enthusiast.story;
      row.insertCell().textContent = enthusiast.tipsAndTricks;
      row.insertCell().textContent = enthusiast.forumPosts;
  });
}

// Call the functions to display information
displayCommunityMembers();
displayCarEnthusiasts();



////////////////////////////////////////////////////////////////////////////////////////////////

function calculatePriceInterval() {
  // Get user inputs from the form
  const age = parseInt(document.getElementById('age').value);
  const monthlySalary = parseInt(document.getElementById('salary').value);
  const lifestyle = document.getElementById('lifestyle').value.toLowerCase();
  const carType = document.getElementById('carType').value.toLowerCase();
  const financing = document.getElementById('financing').value.toLowerCase();

  // Validate input fields
  if (!age || !monthlySalary || !lifestyle || !carType || !financing) {
    alert("Please fill out all the fields before calculating the price interval.");
    return;
  }

  // Validate age input
  if (age < 18 || age > 100) {
    alert('Please enter a valid age between 18 and 100.');
    ageInput.focus();
    return;
  }


  // Calculate base price based on user inputs
  let basePrice = 2000;

  // Adjust base price based on age
  if (age >= 60) {
    ageMessage = '<h3>Thank you for using our website! Enjoy your life at this moment.</h3>';
    basePrice += 10000; // Adding 5000 OMR for customers over 60
  }

  ageMessage = '';

  // Adjust base price based on lifestyle
  switch (lifestyle) {
    case 'adventure':
      basePrice += 2000;
      break;
    case 'city':
      basePrice += 1000;
      break;
    case 'desert':
      basePrice += 2000;
      break;
    // Add more cases based on your lifestyle categories
  }

  // Adjust base price based on car type
  switch (carType) {
    case 'convertible':
      basePrice += 3000;
      break;
    case 'minivan':
      basePrice += 5000;
      break;
    case 'sports':
      basePrice += 7000;
      break;
    case 'Pickup truck':
      basePrice += 5000;
      break;
    
  }

  // Adjust base price based on financing
  if (financing === 'yes') {
    basePrice += 3000; // Adding 3000 OMR for financed cars
  }

  // Adjust base price based on monthly salary
  basePrice += monthlySalary * 0.5; // Add 20% of monthly salary to the base price


    // Calculate price intervals
    const lowerInterval = basePrice - (basePrice * 0.1); // Subtract 10% of base price
    const upperInterval = basePrice + (basePrice * 0.1); // Add 10% of base price

  // Display the result
  displayResult(ageMessage, lowerInterval, upperInterval, carType);
}

// Add this function to your existing JavaScript code
function displayCarImages(carType) {
  // Access the result container
  const resultContainer = document.getElementById('priceResult');

  // Define image URLs based on car type
  let imageUrls = [];
  switch (carType) {
    case 'convertible':
      imageUrls = ['Images/convertible1.webp', 'Images/convertible2.avif', 'Images/convertible3.jpg'];
      break;
    case 'minivan':
      imageUrls = ['Images/minivan1.avif', 'Images/minivan2.jpg', 'Images/minivan3.jpg'];
      break;
    case 'sports':
      imageUrls = ['Images/sportCar1.webp', 'Images/sportCar2.jpg', 'Images/sportCar3.jpg'];
      break;
    case 'pickup truck':
      imageUrls = ['Images/pickup1.jpg', 'Images/pickup2.webp', 'Images/pickup3.jpg'];
      break;
    // Add more cases based on your car type categories
  }

  // Display images side by side
  const imageHTML = imageUrls.map(url => `<img src="${url}" alt="Car Image" class="car-image">`).join('');
  resultContainer.innerHTML += `<div class="image-container">${imageHTML}</div>`;

}

// Modify the displayResult function to include the call to displayCarImages
function displayResult(ageMessage, lowerInterval, upperInterval, carType) {
  // Access the result container
  const resultContainer = document.getElementById('priceResult');
  resultContainer.scrollIntoView({ behavior: 'smooth' });

  // Update the result container with the calculated price interval and age message
  resultContainer.innerHTML = `
      <p>${ageMessage}</p>
      <h1>Your estimated price interval is ${lowerInterval} OMR - ${upperInterval} OMR.</h1>`;




  // Call the function to display car images
  displayCarImages(carType);

}

/////////////////////////////////////////////////////////////////////////////////////



