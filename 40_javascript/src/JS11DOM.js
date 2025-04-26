// DOM Manipulation Example

// Select an element by ID
const heading = document.getElementById('heading');
heading.textContent = 'Hello, DOM!';

// Create a new element
const newParagraph = document.createElement('p');
newParagraph.textContent = 'This is a new paragraph added to the DOM.';

// Append the new element to the body
document.body.appendChild(newParagraph);

// Add a class to an element
heading.classList.add('highlight');

// Add an event listener to a button
const button = document.getElementById('myButton');
button.addEventListener('click', () => {
    alert('Button clicked!');
});