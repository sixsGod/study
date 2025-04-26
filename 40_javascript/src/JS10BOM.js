// Browser Object Model (BOM) Example

// Accessing the window object
console.log("Window width:", window.innerWidth);
console.log("Window height:", window.innerHeight);

// Working with the location object
console.log("Current URL:", window.location.href);
console.log("Hostname:", window.location.hostname);
console.log("Pathname:", window.location.pathname);

// Redirecting to another URL
// window.location.href = "https://www.example.com";

// Working with the navigator object
console.log("Browser Name:", window.navigator.appName);
console.log("Browser Version:", window.navigator.appVersion);
console.log("User Agent:", window.navigator.userAgent);

// Using the history object
console.log("History length:", window.history.length);
// window.history.back(); // Go back to the previous page
// window.history.forward(); // Go forward to the next page

// Using the alert, confirm, and prompt methods
// window.alert("This is an alert!");
// const isConfirmed = window.confirm("Do you want to proceed?");
// const userInput = window.prompt("Enter your name:");

// Working with the screen object
console.log("Screen width:", window.screen.width);
console.log("Screen height:", window.screen.height);
console.log("Available width:", window.screen.availWidth);
console.log("Available height:", window.screen.availHeight);