// JS09Error.js - Exception Handling Example

try {
    // Code that may throw an error
    let result = 10 / 0;
    console.log("Result:", result);

    // Simulating an error
    if (result === Infinity) {
        throw new Error("Division by zero is not allowed.");
    }
} catch (error) {
    // Handling the error
    console.error("An error occurred:", error.message);
} finally {
    // Code that will always execute
    console.log("Execution completed.");
}