

// This is for the index text Banner ///

var welcomeMessage = '';

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



// Update the message every minute (adjust the interval as needed)
setInterval(updateWelcomeMessage, 1);




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/// This is for the calculation Page  ///



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

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/// This is for the Form Validation in Questionnaire ///

document.addEventListener('DOMContentLoaded', function () {
  // Initialize pointers to the document elements to make them easily accessible in variables
  const checkbox1 = document.getElementById("checkbox1");
  const checkbox2 = document.getElementById("checkbox2");
  const checkbox3 = document.getElementById("checkbox3");
  const checkbox4 = document.getElementById("checkbox4");
  const textArea1 = document.getElementById("textArea1");
  const radiobtn6 = document.getElementById("radioBtn6");
  const radiobtn7 = document.getElementById("radioBtn7");
  const radiobtn8 = document.getElementById("radioBtn8");
  const radiobtn9 = document.getElementById("radioBtn9");
  const radiobtn10 = document.getElementById("radioBtn10");
  const textArea2 = document.getElementById("textArea2");
  const form = document.getElementById('form2');
  const errorElement = document.getElementById("error1");
  const errorElement2 = document.getElementById("error2");
  const errorElement3 = document.getElementById("error3");
  const errorElement4 = document.getElementById("error4");

  // Function to count the number of words in a string
  function getWordCount(str) {
    return str.split(' ')
      .filter(function (n) { return n != '' })
      .length;
  }

  // Event listener for the form submission
  form.addEventListener('submit', function (e) {
    let errors = [];

    // Check if at least one checkbox is checked and not all of them are checked
    if ((checkbox1.checked || checkbox2.checked || checkbox3.checked || checkbox4.checked) && !(checkbox1.checked && checkbox2.checked && checkbox3.checked && checkbox4.checked)) {
      errorElement.style.display = 'none';
    } else {
      // Display error if the condition is not met
      errors.push("error1");
      errorElement.style.display = 'block';
    }

    // Check if the word count in textArea1 is between 10 and 200
    if (getWordCount(textArea1.value) < 10 || getWordCount(textArea1.value) > 200) {
      // Display error if the condition is not met
      errors.push("error2");
      errorElement2.style.display = 'block';
    } else {
      errorElement2.style.display = 'none';
    }

    // Check if at least one radio button from radiobtn6 to radiobtn10 is checked
    if (radiobtn6.checked || radiobtn7.checked || radiobtn8.checked || radiobtn9.checked || radiobtn10.checked) {
      errorElement3.style.display = 'none';
    } else {
      // Display error if none of the radio buttons is checked
      errors.push("error3");
      errorElement3.style.display = 'block';
    }

    // Check specific conditions if radiobtn10 is checked
    if (radiobtn10.checked) {
      if (getWordCount(textArea2.value) > 12 || getWordCount(textArea2.value) < 1) {
        // Display error if the condition is not met
        errors.push("error4");
        errorElement4.style.display = 'block';
      } else {
        errorElement4.style.display = 'none';
      }
    }

    // Prevent form submission if there are errors
    if (errors.length > 0) {
      e.preventDefault();
    }
  });
});
