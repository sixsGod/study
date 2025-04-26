// Basic arithmetic operations
function computeOperations(a, b) {
    return {
        addition: a + b,
        subtraction: a - b,
        multiplication: a * b,
        division: b !== 0 ? a / b : 'Division by zero is not allowed',
        modulus: b !== 0 ? a % b : 'Modulus by zero is not allowed'
    };
}

// Example usage
const result = computeOperations(10, 5);
console.log(result);