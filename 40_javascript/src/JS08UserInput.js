// Example of handling user input in JavaScript using prompt
// Note: This code works in a browser environment

// Prompt the user for their name
let userName = prompt("Please enter your name:");

// Check if the user provided input
if (userName) {
    console.log(`Hello, ${userName}! Welcome to the program.`);
} else {
    console.log("You didn't enter your name.");
}