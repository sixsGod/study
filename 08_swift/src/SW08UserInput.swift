import Foundation

print("Please enter your name:")
if let name = readLine() {
    print("Hello, \(name)!")
} else {
    print("Input error.")
}

print("Enter a number:")
if let input = readLine(), let number = Int(input) {
    print("You entered the number: \(number)")
} else {
    print("Invalid number.")
}