import Foundation

// A simple function to perform basic arithmetic operations
func compute(_ a: Double, _ b: Double, operation: String) -> Double? {
    switch operation {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    case "/":
        return b != 0 ? a / b : nil
    default:
        return nil
    }
}

// Example usage
let num1 = 10.0
let num2 = 5.0

if let result = compute(num1, num2, operation: "+") {
    print("Result of addition: \(result)")
} else {
    print("Invalid operation or division by zero.")
}

if let result = compute(num1, num2, operation: "/") {
    print("Result of division: \(result)")
} else {
    print("Invalid operation or division by zero.")
}